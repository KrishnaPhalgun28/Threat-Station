// ignore_for_file: file_names

class PyGithubModel {
  late final String name;
  late final String fullname;
  late final String description;
  late final String language;
  late final String orgName;
  late final String license;
  late final String size;
  late final String forksCount;
  late final String openIssuesCount;
  late final String closedIssuesCount;
  late final String watchersCount;
  late final String stargazersCount;
  late final String subscribersCount;
  late final String contributorsCount;
  late final String collaboratorsCount;
  late final String contributionsCount;
  late final String releasesCount;
  late final String isArchived;
  late final String hasDownloads;
  late final String hasIssues;
  late final String hasPages;
  late final String hasProjects;
  late final String hasWiki;
  late final String repoPushedAt;
  late final String repoCreatedAt;
  late final String repoUpdatedAt;
  late final String orgCreatedAt;

  PyGithubModel(Map<String, dynamic> data) {
    name = data['name'] == '' ? 'N/A' : data['name'];
    description = data['description'] == ''
        ? 'No description, website, or topics found.'
        : data['description'];
    language = data['language'];
    orgName = data['orgName'];
    license = data['license'];
    size = data['size'] == -1 ? "-" : data['size'].toString();
    forksCount = data['forksCount'] == -1 ? "-" : data['forksCount'].toString();
    openIssuesCount = data['openIssuesCount'] == -1
        ? "-"
        : data['openIssuesCount'].toString();
    closedIssuesCount = data['closedIssuesCount'] == -1
        ? "-"
        : data['closedIssuesCount'].toString();
    watchersCount =
        data['watchersCount'] == -1 ? "-" : data['watchersCount'].toString();
    stargazersCount = data['stargazersCount'] == -1
        ? "-"
        : data['stargazersCount'].toString();
    contributorsCount = data['contributorsCount'] == -1
        ? "-"
        : data['contributorsCount'].toString();
    collaboratorsCount = data['collaboratorsCount'] == -1
        ? "-"
        : data['collaboratorsCount'].toString();
    contributionsCount = data['contributionsCount'] == -1
        ? "-"
        : data['contributionsCount'].toString();
    releasesCount = data['releasesCount'] == -1 ? "-" : data['size'].toString();
    isArchived = data['isArchived'];
    hasDownloads = data['hasDownloads'];
    hasIssues = data['hasIssues'];
    hasPages = data['hasPages'];
    hasProjects = data['hasProjects'];
    hasWiki = data['hasWiki'];
    repoPushedAt = data['repoPushedAt'];
    repoCreatedAt = data['repoCreatedAt'];
    repoUpdatedAt = data['repoUpdatedAt'];
    orgCreatedAt = data['orgCreatedAt'];
  }
}
