import 'package:flutter/material.dart';

class LoginData with ChangeNotifier{

  String email = '';
  String password = '';

  void saveUser(String newEmail, String newPassword) {
    email = newEmail;
    password = newPassword;
    notifyListeners();
  }
}