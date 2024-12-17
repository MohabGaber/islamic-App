import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  String AppLanguage = "en";

  void changeLanguage(String newLanguage) {
    if (AppLanguage == newLanguage) {
      return;
    }
    AppLanguage = newLanguage;
    notifyListeners();
  }
}
