import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier {
  bool isshow = false;

  checkisshow() {
    isshow = !isshow;
    notifyListeners();
  }
}
