// ignore_for_file: file_names

class SnykTestModel {
  late final String name;
  late final String title;
  late final String severity;
  late final String indentifier;
  late final String cvssScore;
  late final String description;

  SnykTestModel(Map<String, dynamic> data) {
    name = data['name'];
    title = data['title'];
    severity = data['severity'];
    indentifier = data['indentifier'];
    cvssScore = data['cvssScore'].toString();
    description = data['description'];
  }
}
