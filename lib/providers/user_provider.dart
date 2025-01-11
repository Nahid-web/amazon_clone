import 'package:flutter/material.dart';

import '../models/user.dart';

class UserProvider extends ChangeNotifier {
  User _user = User();

  User get user => _user;

  void setUser(user) {
    _user = User.fromJson(user);
    print("user is ${_user.toJson()}");
    notifyListeners();
  }

  void addCart(List<dynamic> cartList) {
    _user.cart = cartList;
    notifyListeners();
  }
}
