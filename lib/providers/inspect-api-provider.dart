// ignore_for_file: file_names

import 'package:flutter/material.dart';

enum InspectAPIState {
  fetching,
  fetchFailed,
  fetchSucceed,
}

class InspectAPIProvider extends ChangeNotifier {
  InspectAPIState currentState = InspectAPIState.fetchSucceed;

  void fetch() {
    currentState = currentState == InspectAPIState.fetching
        ? InspectAPIState.fetchFailed
        : InspectAPIState.fetching;
    notifyListeners();
  }
}
