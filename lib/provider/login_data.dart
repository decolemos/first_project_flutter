import 'package:flutter/material.dart';

class LoginData with ChangeNotifier{

  String user = '';
  String password = '';

  void saveUser(String newEmail, String newPassword) {
    user = newEmail;
    password = newPassword;
    notifyListeners();
  }
}