// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../providers/inspect-api-provider.dart';

class ChartData {
  final String x;
  final int y;

  ChartData(this.x, this.y);
}

class DoughnutChart extends StatelessWidget {
  final List<ChartData> chartData;
  const DoughnutChart(
    this.chartData, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      legend: Legend(
        isVisible: true,
        isResponsive: true,
        overflowMode: LegendItemOverflowMode.scroll,
        position: LegendPosition.left,
        orientation: LegendItemOrientation.vertical,
      ),
      tooltipBehavior: TooltipBehavior(enable: true),
      series: [
        DoughnutSeries<ChartData, String>(
          enableTooltip: true,
          dataSource: chartData,
          xValueMapper: (ChartData data, int index) => data.x,
          yValueMapper: (ChartData data, int index) => data.y,
        ),
      ],
    );
  }
}

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
