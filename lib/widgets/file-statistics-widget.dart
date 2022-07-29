// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../colors.dart';
import '../providers/inspect-api-provider.dart';

class FileStatisticsWidget extends StatelessWidget {
  const FileStatisticsWidget({Key? key}) : super(key: key);

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'File Statistics',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 16),
              Table(
                defaultColumnWidth: const FixedColumnWidth(186),
                border: TableBorder.all(
                  width: 2,
                  color: HomePageTheme.fileStatisticsBorderColor,
                  style: BorderStyle.solid,
                ),
                children: [
                  TableRow(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'No of files scanned',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '${inspectAPIProvider.appInspectorData.filesAnalyzed} / ${inspectAPIProvider.appInspectorData.totalFiles}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'No of files affected',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '${inspectAPIProvider.appInspectorData.filesAffected} / ${inspectAPIProvider.appInspectorData.totalFiles}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        }
      },
    );
  }
}
