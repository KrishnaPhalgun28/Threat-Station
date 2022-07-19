// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../css.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Threat Station',
      style: GoogleFonts.robotoSlab(
        fontWeight: FontWeight.w500,
        color: LogoWidgetTheme.titleColor,
      ),
    );
  }
}
