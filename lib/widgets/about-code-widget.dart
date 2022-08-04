// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/inspect-api-provider.dart';

class AboutCodeWidget extends StatelessWidget {
  const AboutCodeWidget({Key? key}) : super(key: key);

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
              Text(
                'About ${inspectAPIProvider.pyGithubModel.name}',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 12),
              Text(
                inspectAPIProvider.pyGithubModel.description,
                textAlign: TextAlign.justify,
              ),
            ],
          );
        }
      },
    );
  }
}
