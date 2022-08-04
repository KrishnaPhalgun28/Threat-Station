// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'git-medadata-widget.dart';
import 'inspect-stats-widget.dart';
import '../widgets/source-types-widget.dart';
import '../widgets/key-features-widget.dart';
import 'about-code-widget.dart';
import 'safety-indicator-widget.dart';
import 'vulnerabilities-widget.dart';
import '../providers/inspect-api-provider.dart';

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
        if (MediaQuery.of(context).size.width < 1400) {
          return const Center(
            child: Text(
              'For the best experience, Enlarge the window.',
            ),
          );
        }
        if (inspectAPIProvider.currentState == InspectAPIState.fetchSucceed) {
          return ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: 400,
                        child: AboutCodeWidget(),
                      ),
                      SizedBox(height: 16),
                      SizedBox(
                        width: 400,
                        child: SafetyIndicatorWidget(),
                      ),
                      SizedBox(height: 16),
                      SizedBox(
                        width: 400,
                        child: GitMetadataWidget(),
                      ),
                    ],
                  ),
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
                      SizedBox(height: 16),
                    ],
                  ),
                ],
              ),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
