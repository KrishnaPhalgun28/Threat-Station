// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../css.dart';
import '../widgets/logo-widget.dart';
import '../widgets/inspect-widget.dart';
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
          return Column(
            children: [
              SizedBox(height: constraints.maxHeight * 0.05),
              Container(
                constraints:
                    BoxConstraints(maxWidth: constraints.maxWidth * 0.3),
                child: const HomePageTitleWidget(),
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
              const SizedBox(height: 12),
              InspectWidget(
                controller: textController,
              ),
            ],
          );
        },
      ),
      backgroundColor: HomePageTheme.scaffoldBackgroundColor,
    );
  }
}

class HomePageTitleWidget extends StatelessWidget {
  const HomePageTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'where is the code you want to test?',
      style: TextStyle(
        fontSize: 32,
        color: HomePageTheme.titleColor,
      ),
      textAlign: TextAlign.center,
    );
  }
}
