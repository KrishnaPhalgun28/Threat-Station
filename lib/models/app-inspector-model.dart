// ignore_for_file: file_names

import 'key-features-model.dart';

class AppInspectorModel {
  late final int totalFiles;
  late final int filesAnalyzed;
  late final int filesAffected;
  late final List<dynamic> uniqueTags;
  late final Map<String, dynamic> languages;
  late final List<dynamic> detailedMatchList;
  late Map<int, String> featureIndicies;
  late Map<int, List<dynamic>> patternData;

  AppInspectorModel(Map<String, dynamic> data) {
    totalFiles = data['totalFiles'];
    filesAnalyzed = data['filesAnalyzed'];
    filesAffected = data['filesAffected'];
    uniqueTags = data['uniqueTags'];
    languages = data['languages'];
    detailedMatchList = data['detailedMatchList'];

    featureIndicies = {};
    for (int i = 0; i < keyFeatureIcons.length; i++) {
      for (int j = 0; j < uniqueTags.length; j++) {
        if ((uniqueTags[j] as String)
            .contains(keyFeatureIcons.keys.elementAt(i))) {
          featureIndicies[i] = uniqueTags[j];
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
