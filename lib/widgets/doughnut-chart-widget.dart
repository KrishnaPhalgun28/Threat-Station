// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

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
