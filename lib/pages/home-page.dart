// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../widgets/dashboard-widget.dart';
import '../colors.dart';
import '../widgets/logo-widget.dart';
import '../widgets/url-field-widget.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home-page';
  static final TextEditingController textController = TextEditingController();

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoWidget(),
        elevation: 0,
        backgroundColor: HomePageTheme.appBarBackgroundColor,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxWidth: constraints.maxWidth * 0.35,
                  ),
                  child: const Text(
                    'where is the code you want to test?',
                    style: TextStyle(
                      fontSize: 32,
                      color: HomePageTheme.titleColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: constraints.maxWidth * 0.5,
                      child: URLFieldWidget(controller: textController),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Expanded(
                  child: DashboardWidget(),
                ),
              ],
            ),
          );
        },
      ),
      backgroundColor: HomePageTheme.scaffoldBackgroundColor,
    );
  }
}
