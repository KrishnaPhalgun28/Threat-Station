// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../css.dart';

class InspectWidget extends StatelessWidget {
  final TextEditingController controller;

  const InspectWidget({
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
            side: BorderSide(color: HomePageTheme.inspectBorderColor),
          ),
        ),
        padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
          (Set<MaterialState> states) {
            return const EdgeInsets.symmetric(
              vertical: 14,
              horizontal: 20,
            );
          },
        ),
        overlayColor: MaterialStateProperty.resolveWith(
          (states) {
            return states.contains(MaterialState.pressed)
                ? HomePageTheme.inspectOverlayColor
                : null;
          },
        ),
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(
          HomePageTheme.inspectBackgroundColor,
        ),
      ),
      child: const Text(
        'Inspect',
        style: TextStyle(
          fontSize: 16.75,
        ),
      ),
    );
  }
}
