// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:threatstation/widgets/util-widgets.dart';
import '../colors.dart';
import '../providers/inspect-api-provider.dart';

class InspectStatsWidget extends StatelessWidget {
  const InspectStatsWidget({Key? key}) : super(key: key);

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
                'Inspect Stats',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
                child: Table(
                  defaultColumnWidth: const FixedColumnWidth(186),
                  border: TableBorder.all(
                    width: 2,
                    color: HomePageTheme.inspectStatsBorderColor,
                    style: BorderStyle.solid,
                  ),
                  children: [
                    detailRow(
                      'No of files scanned',
                      '${inspectAPIProvider.appInspectorModel.filesAnalyzed} / ${inspectAPIProvider.appInspectorModel.totalFiles}',
                    ),
                    detailRow(
                      'No of files affected',
                      '${inspectAPIProvider.appInspectorModel.filesAffected} / ${inspectAPIProvider.appInspectorModel.totalFiles}',
                    ),
                  ],
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
