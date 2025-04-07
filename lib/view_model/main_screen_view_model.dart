import 'package:flutter/cupertino.dart';

class MainScreenViewModel with ChangeNotifier {
  int defaultScreenIndex = 0;

  int get fetchCurrentIndex {
    return defaultScreenIndex;
  }

  void updateScreenIndex(int newIndex) {
    defaultScreenIndex = newIndex;
    notifyListeners();
  }
}
