// ignore_for_file: file_names

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import '../colors.dart';
import '../providers/inspect-api-provider.dart';

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
    return Consumer(
      builder: (
        BuildContext context,
        InspectAPIProvider inspectAPIProvider,
        Widget? child,
      ) =>
          TextFormField(
        controller: widget.controller,
        cursorColor: HomePageTheme.textFieldCursorColor,
        onFieldSubmitted: (value) {
          if (inspectAPIProvider.currentState != InspectAPIState.fetching) {
            inspectAPIProvider.fetch(widget.controller.text);
          }
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: "https://github.com/ or equivalent",
          fillColor: HomePageTheme.textFieldFillColor,
          hoverColor: HomePageTheme.textFieldHoverColor,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: HomePageTheme.textFieldBorderColor,
            ),
          ),
          prefixIcon: const Icon(
            Icons.link,
            color: HomePageTheme.prefixIconColor,
          ),
          suffixIcon: inspectAPIProvider.currentState ==
                  InspectAPIState.fetching
              ? const IconButton(
                  padding: EdgeInsets.fromLTRB(0, 0, 6, 0),
                  onPressed: null,
                  icon: SpinKitWave(
                    size: 16,
                    color: HomePageTheme.spinKitIndicatorColor,
                  ),
                )
              : inspectAPIProvider.currentState == InspectAPIState.fetchFailed
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          hoverColor: HomePageTheme.suffixHoverColor,
                          splashColor: HomePageTheme.suffixSplashColor,
                          highlightColor: HomePageTheme.suffixHighlightColor,
                          onPressed: () {
                            widget.controller.clear();
                            inspectAPIProvider.reset();
                          },
                          icon: const Icon(
                            Icons.clear,
                            color: HomePageTheme.suffixIconColor,
                          ),
                        ),
                        Tooltip(
                          padding: const EdgeInsets.all(8),
                          message: inspectAPIProvider.errorMessage,
                          textStyle: const TextStyle(
                            color: HomePageTheme.tooltipTextColor,
                          ),
                          decoration: const BoxDecoration(
                            color: HomePageTheme.tooltipBackgroundColor,
                          ),
                          child: const IconButton(
                            iconSize: 22,
                            padding: EdgeInsets.fromLTRB(0, 0, 6, 0),
                            onPressed: null,
                            icon: Icon(
                              Icons.info_outline,
                              color: HomePageTheme.suffixIconErrorColor,
                            ),
                          ),
                        ),
                      ],
                    )
                  : length > 0
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
                                widget.controller.value = TextEditingValue(
                                  text: value,
                                  selection: TextSelection.collapsed(
                                      offset: value.length),
                                );
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
      ),
    );
  }
}
