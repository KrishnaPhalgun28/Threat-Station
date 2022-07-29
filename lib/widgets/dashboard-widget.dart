// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'inspect-stats-widget.dart';
import '../widgets/source-types-widget.dart';
import '../widgets/key-features-widget.dart';
import '../providers/inspect-api-provider.dart';
import 'vulnerabilities-widget.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (
        BuildContext context,
        InspectAPIProvider inspectAPIProvider,
        Widget? child,
      ) {
        return ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    SizedBox(
                      width: 400,
                      child: VulnerabilitiesWidget(),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    SizedBox(
                      width: 400,
                      child: InspectStatsWidget(),
                    ),
                    SizedBox(height: 16),
                    SizedBox(
                      width: 400,
                      child: KeyFeaturesWidget(),
                    ),
                    SizedBox(height: 16),
                    SizedBox(
                      width: 400,
                      child: SourceTypesWidget(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
