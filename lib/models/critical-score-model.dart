// ignore_for_file: file_names

class CriticalityScoreModel {
  late final String commentFrequency;
  late final String recentReleasesCount;
  late final String commitFrequency;
  late final String dependentsCount;
  late final double criticalityScore;

  CriticalityScoreModel(Map<String, dynamic> data) {
    commentFrequency = data['commentFrequency'] == -1
        ? ''
        : data['commentFrequency'].toString();
    recentReleasesCount = data['recentReleasesCount'] == -1
        ? ''
        : data['recentReleasesCount'].toString();
    commitFrequency =
        data['commitFrequency'] == -1 ? '' : data['commitFrequency'].toString();
    dependentsCount =
        data['dependentsCount'] == -1 ? '' : data['dependentsCount'].toString();
    criticalityScore =
        data['criticalityScore'] == -1 ? 0 : data['criticalityScore'] * 100;
  }
}
