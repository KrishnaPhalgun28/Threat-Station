// ignore_for_file: file_names

import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/app-inspector-model.dart';
import '../models/critical-score-model.dart';
import '../models/py-github-model.dart';
import '../models/snyk-test-model.dart';

const String apiURL = 'http://13.233.141.91/inspect';

enum InspectAPIState {
  idle,
  fetching,
  fetchFailed,
  fetchSucceed,
}

class InspectAPIProvider extends ChangeNotifier {
  late AppInspectorModel appInspectorModel;
  late List<SnykTestModel> snykTestModel = [];
  late PyGithubModel pyGithubModel;
  late CriticalityScoreModel criticalityScoreModel;
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
        appInspectorModel = AppInspectorModel(output['app-inspector']);
        for (int i = 0; i < output['snyk-test'].length; i++) {
          snykTestModel.add(SnykTestModel(output['snyk-test'][i]));
        }
        pyGithubModel = PyGithubModel(output['py-github']);
        criticalityScoreModel =
            CriticalityScoreModel(output['criticality-score']);
        currentState = InspectAPIState.fetchSucceed;
        notifyListeners();
        return;
      } else if (response.statusCode == 403) {
        errorMessage = '${response.body} ❌';
        currentState = InspectAPIState.fetchFailed;
        notifyListeners();
        return;
      } else {
        errorMessage = 'There was an error. Code ${response.statusCode} ⚠️';
        currentState = InspectAPIState.fetchFailed;
        notifyListeners();
        return;
      }
    } on SocketException {
      currentState = InspectAPIState.fetchFailed;
      errorMessage = 'Unable to connect to API 😱. No Internet connection 😑';
      notifyListeners();
      return;
    } on Exception catch (_) {
      errorMessage = 'Something went wrong 😕';
      currentState = InspectAPIState.fetchFailed;
      notifyListeners();
    }
  }

  void reset() {
    currentState = InspectAPIState.idle;
    notifyListeners();
  }
}
