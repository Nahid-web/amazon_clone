import 'package:flutter/material.dart';

import '../models/User.dart';

class UserProvider extends ChangeNotifier {
  User _user = User();

  User get user => _user;

  void setUser(user) {
    _user = User.fromJson(user);
    notifyListeners();
  }
}
