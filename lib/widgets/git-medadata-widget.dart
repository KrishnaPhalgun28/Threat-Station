// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'util-widgets.dart';
import '../colors.dart';
import '../providers/inspect-api-provider.dart';

class GitMetadataWidget extends StatelessWidget {
  const GitMetadataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (
        BuildContext context,
        InspectAPIProvider inspectAPIProvider,
        Widget? child,
      ) {
        if (inspectAPIProvider.currentState != InspectAPIState.fetchSucceed) {
          return const SizedBox.shrink();
        } else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Git Metadata',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 16),
              Table(
                defaultColumnWidth: const FixedColumnWidth(200),
                border: TableBorder.all(
                  width: 2,
                  color: HomePageTheme.gitPropertiesBorderColor,
                  style: BorderStyle.solid,
                ),
                children: [
                  detailRow(
                    'Language',
                    inspectAPIProvider.pyGithubModel.language,
                  ),
                  detailRow(
                    'Created at',
                    inspectAPIProvider.pyGithubModel.repoCreatedAt,
                  ),
                  detailRow(
                    'Last push',
                    inspectAPIProvider.pyGithubModel.repoPushedAt,
                  ),
                  detailRow(
                    'Last update',
                    inspectAPIProvider.pyGithubModel.repoUpdatedAt,
                  ),
                  detailRow(
                    'Organization name',
                    inspectAPIProvider.pyGithubModel.orgName,
                  ),
                  detailRow(
                    'Organization created at',
                    inspectAPIProvider.pyGithubModel.orgCreatedAt,
                  ),
                  detailRow(
                    'Size',
                    '${inspectAPIProvider.pyGithubModel.size} KB',
                  ),
                  detailRow(
                    'No of forks',
                    inspectAPIProvider.pyGithubModel.forksCount,
                  ),
                  detailRow(
                    'No of open issues',
                    inspectAPIProvider.pyGithubModel.openIssuesCount,
                  ),
                  detailRow(
                    'No of issues closed',
                    inspectAPIProvider.pyGithubModel.closedIssuesCount,
                  ),
                  detailRow(
                    'No of watchers',
                    inspectAPIProvider.pyGithubModel.watchersCount,
                  ),
                  detailRow(
                    'No of stargazers',
                    inspectAPIProvider.pyGithubModel.stargazersCount,
                  ),
                  detailRow(
                    'No of contributors',
                    inspectAPIProvider.pyGithubModel.contributorsCount,
                  ),
                  detailRow(
                    'No of collaborators',
                    inspectAPIProvider.pyGithubModel.collaboratorsCount,
                  ),
                  detailRow(
                    'No of contributions',
                    inspectAPIProvider.pyGithubModel.contributionsCount,
                  ),
                  detailRow(
                    'No of releases',
                    inspectAPIProvider.pyGithubModel.releasesCount,
                  ),
                  detailRow(
                    'Is archived',
                    inspectAPIProvider.pyGithubModel.isArchived,
                  ),
                  detailRow(
                    'Has downloads',
                    inspectAPIProvider.pyGithubModel.hasDownloads,
                  ),
                  detailRow(
                    'Has issues',
                    inspectAPIProvider.pyGithubModel.hasIssues,
                  ),
                  detailRow(
                    'Has pages',
                    inspectAPIProvider.pyGithubModel.hasPages,
                  ),
                  detailRow(
                    'Has projects',
                    inspectAPIProvider.pyGithubModel.hasProjects,
                  ),
                  detailRow(
                    'Comment frequency',
                    inspectAPIProvider.criticalityScoreModel.commentFrequency,
                  ),
                  detailRow(
                    'Commit frequency',
                    inspectAPIProvider.criticalityScoreModel.commitFrequency,
                  ),
                  detailRow(
                    'Recent releases count',
                    inspectAPIProvider
                        .criticalityScoreModel.recentReleasesCount,
                  ),
                  detailRow(
                    'No of dependents',
                    inspectAPIProvider.criticalityScoreModel.dependentsCount,
                  ),
                ],
              ),
              const SizedBox(height: 24),
            ],
          );
        }
      },
    );
  }
}
