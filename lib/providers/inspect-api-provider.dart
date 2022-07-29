// ignore_for_file: file_names

import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'key-features-provider.dart';

const String apiURL = 'http://13.233.141.91/inspect';

enum InspectAPIState {
  idle,
  fetching,
  fetchFailed,
  fetchSucceed,
}

class AppInspectorData {
  late final int totalFiles;
  late final int filesAnalyzed;
  late final int filesAffected;
  late final List<dynamic> uniqueTags;
  late final Map<String, dynamic> languages;
  late final List<dynamic> detailedMatchList;
  late List<int> featureIndicies;
  late Map<int, List<dynamic>> patternData;

  AppInspectorData(Map<String, dynamic> data) {
    totalFiles = data['totalFiles'];
    filesAnalyzed = data['filesAnalyzed'];
    filesAffected = data['filesAffected'];
    uniqueTags = data['uniqueTags'];
    languages = data['languages'];
    detailedMatchList = data['detailedMatchList'];

    featureIndicies = [];
    for (int i = 0; i < keyFeatureIcons.length; i++) {
      for (int j = 0; j < uniqueTags.length; j++) {
        if ((uniqueTags[j] as String)
            .contains(keyFeatureIcons.keys.elementAt(i))) {
          featureIndicies.add(i);
        }
      }
    }

    patternData = {};
    for (int i = 0; i < keyFeatureIcons.length; i++) {
      for (int j = 0; j < detailedMatchList.length; j++) {
        if ((detailedMatchList[j]['tag'] as String)
            .contains(keyFeatureIcons.keys.elementAt(i))) {
          if (patternData.containsKey(i)) {
            patternData[i]?.add(detailedMatchList[j]);
          } else {
            patternData[i] = [detailedMatchList[j]];
          }
        }
      }
    }
  }
}

class SnykData {
  late final String name;
  late final String title;
  late final String severity;
  late final String indentifier;
  late final String cvssScore;
  late final String description;

  SnykData(Map<String, dynamic> data) {
    name = data['name'];
    title = data['title'];
    severity = data['severity'];
    indentifier = data['indentifier'];
    cvssScore = data['cvssScore'].toString();
    description = data['description'];
  }
}

class InspectAPIProvider extends ChangeNotifier {
  late AppInspectorData appInspectorData;
  late List<SnykData> snykData = [];
  late String errorMessage = '';
  InspectAPIState currentState = InspectAPIState.idle;

  void fetch(String link) async {
    currentState = InspectAPIState.fetching;
    notifyListeners();

    try {
      final response = await http.post(
        Uri.parse(apiURL),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{'link': link}),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> output =
            Map<String, dynamic>.from(jsonDecode(response.body));
        appInspectorData = AppInspectorData(output['app-inspector']);
        for (int i = 0; i < output['snyk-test'].length; i++) {
          snykData.add(SnykData(output['snyk-test'][i]));
        }
        debugPrint(snykData.length.toString());
        currentState = InspectAPIState.fetchSucceed;
        notifyListeners();
        return;
      } else {
        errorMessage = 'There was an error. Code ${response.statusCode} ⚠️';
        currentState = InspectAPIState.fetchFailed;
        notifyListeners();
      }
    } on SocketException {
      errorMessage = 'No Internet connection 😑';
    } on HttpException {
      errorMessage = 'Unable to connect to API 😮';
    }
    errorMessage = 'Something went wrong 😕';
    currentState = InspectAPIState.fetchFailed;
    notifyListeners();
  }

  void reset() {
    currentState = InspectAPIState.idle;
    notifyListeners();
  }
}
