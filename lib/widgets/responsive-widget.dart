// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  static const int mSize = 768;
  static const int lSize = 1200;

  final Widget lWidget;
  final Widget? mWidget;
  final Widget? sWidget;

  const ResponsiveWidget({
    Key? key,
    required this.lWidget,
    this.mWidget,
    this.sWidget,
  }) : super(key: key);

  static bool isLScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > lSize;

  static bool isSScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mSize;

  static bool isMScreen(BuildContext context) =>
      !isSScreen(context) && !isLScreen(context);

  @override
  Widget build(BuildContext context) {
    if (isLScreen(context)) {
      return lWidget;
    } else if (isSScreen(context)) {
      return sWidget ?? lWidget;
    } else {
      return mWidget ?? lWidget;
    }
  }
}
