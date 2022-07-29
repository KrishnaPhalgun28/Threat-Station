// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'doughnut-chart-widget.dart';
import '../providers/inspect-api-provider.dart';

class SourceTypesWidget extends StatelessWidget {
  const SourceTypesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (
      BuildContext context,
      InspectAPIProvider inspectAPIProvider,
      Widget? child,
    ) {
      if (inspectAPIProvider.currentState == InspectAPIState.fetchSucceed) {
        if (inspectAPIProvider.appInspectorData.languages.isNotEmpty) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Source Types',
                style: TextStyle(fontSize: 20),
              ),
              DoughnutChart(
                inspectAPIProvider.appInspectorData.languages.entries
                    .map(
                      (entry) => ChartData(entry.key, entry.value),
                    )
                    .toList(),
              ),
            ],
          );
        } else {
          return const Text(
            'Source Types (Unavailable)',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          );
        }
      } else {
        return const SizedBox.shrink();
      }
    });
  }
}
