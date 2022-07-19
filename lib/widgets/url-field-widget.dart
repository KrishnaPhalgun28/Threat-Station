// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';
import '../css.dart';

class URLFieldWidget extends StatefulWidget {
  final TextEditingController controller;

  const URLFieldWidget({
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  State<URLFieldWidget> createState() => _URLFieldWidgetState();
}

class _URLFieldWidgetState extends State<URLFieldWidget> {
  int length = 0;

  @override
  void initState() {
    widget.controller.addListener(() {
      setState(() => length = widget.controller.text.length);
    });
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: "https://github.com/ or equivalent",
        fillColor: HomePageTheme.textFieldFillColor,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: HomePageTheme.textFieldBorderColor,
          ),
        ),
        prefixIcon: const Icon(
          Icons.link,
          color: HomePageTheme.prefixIconColor,
        ),
        suffixIcon: length > 0
            ? IconButton(
                hoverColor: HomePageTheme.suffixHoverColor,
                splashColor: HomePageTheme.suffixSplashColor,
                highlightColor: HomePageTheme.suffixHighlightColor,
                onPressed: () {
                  widget.controller.clear();
                },
                icon: const Icon(
                  Icons.clear,
                  color: HomePageTheme.suffixIconColor,
                ),
              )
            : IconButton(
                hoverColor: HomePageTheme.suffixHoverColor,
                splashColor: HomePageTheme.suffixSplashColor,
                highlightColor: HomePageTheme.suffixHighlightColor,
                iconSize: 22,
                onPressed: () {
                  FlutterClipboard.paste().then((value) {
                    setState(() {
                      widget.controller.text = value;
                    });
                  });
                },
                icon: const Icon(
                  Icons.paste,
                  color: HomePageTheme.suffixIconColor,
                ),
              ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
      ),
    );
  }
}
