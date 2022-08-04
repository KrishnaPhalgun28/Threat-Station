// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:io' show Platform;
import '../colors.dart';
import '../models/snyk-test-model.dart';
import '../providers/inspect-api-provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class VulnerabilitiesWidget extends StatelessWidget {
  const VulnerabilitiesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (
        BuildContext context,
        InspectAPIProvider inspectAPIProvider,
        Widget? child,
      ) {
        if (inspectAPIProvider.currentState == InspectAPIState.fetchSucceed) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Vulnerabilities',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 8),
              if (inspectAPIProvider.snykTestModel.isNotEmpty)
                ...inspectAPIProvider.snykTestModel
                    .map(
                      (SnykTestModel s) => InkWell(
                        onTap: () {
                          showDialogWithFields(context, s.description);
                        },
                        child: VulnerabilityCard(s),
                      ),
                    )
                    .toList(),
              if (inspectAPIProvider.snykTestModel.isEmpty)
                RichText(
                  textAlign: TextAlign.justify,
                  text: const TextSpan(
                    text:
                        "No vulnerabilities were found. This could be due to a number of factors, such as the ones listed below\n\n",
                    children: [
                      TextSpan(
                        text:
                            "There are no dependencies at all or there are no production dependencies, but rather all of them are devDependencies.\n\n",
                      ),
                      TextSpan(
                        text:
                            "For some languages you may have to install the dependencies before scanning.\n\n",
                      ),
                      TextSpan(
                        text:
                            "To aid in the discovery of vulnerabilities, the repository should contain one or more of the following files\n\n",
                        children: [
                          TextSpan(text: "    package.json (npm)\n\n"),
                          TextSpan(text: "    Gemfile.lock (RubyGems)\n\n"),
                          TextSpan(text: "    pom.xml (Maven) \n\n"),
                          TextSpan(text: "    build.gradle (Gradle)\n\n"),
                          TextSpan(text: "    build.sbt (Scala)\n\n"),
                          TextSpan(text: "    requirements.txt (Python)\n\n"),
                        ],
                      ),
                    ],
                    style: TextStyle(color: Colors.black),
                  ),
                ),
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

class VulnerabilityCard extends StatelessWidget {
  final SnykTestModel s;

  const VulnerabilityCard(
    this.s, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            s.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: (s.severity == 'critical')
                  ? HomePageTheme.vulnerabilityCriticalColor
                  : (s.severity == 'high')
                      ? HomePageTheme.vulnerabilityHighColor
                      : (s.severity == 'medium')
                          ? HomePageTheme.vulnerabilityMediumColor
                          : (s.severity == 'low')
                              ? HomePageTheme.vulnerabilityLowColor
                              : HomePageTheme.vulnerabilityUnknownColor,
            ),
          ),
          subtitle: Text(s.title),
          trailing: Text(
            s.cvssScore.toString(),
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 14, 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SelectableText(s.indentifier),
            ],
          ),
        ),
      ],
    );
  }
}

void showDialogWithFields(
  BuildContext context,
  String description,
) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return LayoutBuilder(
        builder: (context, constraints) => AlertDialog(
          content: SizedBox(
            width: 0.55 * constraints.maxWidth,
            height: 0.5 * constraints.maxHeight,
            child: Markdown(
              selectable: true,
              data: description,
              onTapLink: (text, url, title) {
                if (Platform.isWindows && url != null) {
                  launchUrl(Uri.parse(url));
                }
              },
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
