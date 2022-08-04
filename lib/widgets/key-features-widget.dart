// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../colors.dart';
import '../providers/inspect-api-provider.dart';
import '../models/key-features-model.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KeyFeaturesWidget extends StatelessWidget {
  const KeyFeaturesWidget({Key? key}) : super(key: key);

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
                'Key Features',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 8),
              ResponsiveGridList(
                scroll: false,
                desiredItemWidth: 50,
                minSpacing: 4,
                children: List<Widget>.generate(
                  keyFeatureIcons.length,
                  (int i) => Tooltip(
                    triggerMode: TooltipTriggerMode.tap,
                    padding: const EdgeInsets.all(8),
                    message: keyFeatureIcons.values.elementAt(i).label,
                    textStyle: const TextStyle(
                      color: HomePageTheme.tooltipTextColor,
                    ),
                    decoration: const BoxDecoration(
                      color: HomePageTheme.tooltipBackgroundColor,
                    ),
                    child: IconButton(
                      iconSize: 22,
                      splashRadius: 20,
                      color: (inspectAPIProvider
                              .appInspectorModel.featureIndicies
                              .containsKey(i))
                          ? HomePageTheme.keyFeatureEnabledColor
                          : HomePageTheme.keyFeatureDisabledColor,
                      splashColor: HomePageTheme.keyFeatureSplashColor,
                      onPressed: (inspectAPIProvider
                              .appInspectorModel.patternData
                              .containsKey(i))
                          ? () {
                              showDialogWithFields(
                                context,
                                inspectAPIProvider
                                    .appInspectorModel.featureIndicies[i]!,
                                inspectAPIProvider
                                    .appInspectorModel.patternData[i]!,
                              );
                            }
                          : null,
                      icon: FaIcon(
                        keyFeatureIcons.values.elementAt(i).iconData,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}

void showDialogWithFields(
  BuildContext context,
  String title,
  List<dynamic> patternData,
) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return LayoutBuilder(
        builder: (context, constraints) => AlertDialog(
          title: Text('Source File Listing: $title'),
          content: Container(
            constraints: BoxConstraints(
              maxHeight: 0.8 * constraints.maxHeight,
            ),
            width: 0.55 * constraints.maxWidth,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: patternData
                    .map(
                      (entry) => Theme(
                        data: Theme.of(context).copyWith(
                          dividerColor: HomePageTheme.patternTileDividerColor,
                        ),
                        child: ExpansionTile(
                          title: Text(entry['fileName']),
                          children: [
                            ListTile(
                              title: Text(entry['excerpt']),
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('CANCEL'),
            ),
          ],
        ),
      );
    },
  );
}
