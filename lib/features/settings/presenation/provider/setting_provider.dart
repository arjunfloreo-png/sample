import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  String _username = '';

  String get username => _username;
  TextEditingController userNameController = TextEditingController();
  void updateUsername(String newUsername) {
    _username = newUsername;
    notifyListeners();
  }

  
}