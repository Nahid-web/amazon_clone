import 'dart:convert';

import 'package:amazon_clone/constants/error_handling.dart';
import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/constants/utils.dart';
import 'package:amazon_clone/model/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthService {
  //sign up
  void signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = User(
        name: name,
        email: email,
        password: password,
        address: '',
        sId: '',
        // iV: null,
        type: '',
      );

      print(jsonEncode(user));
      http.Response res = await http.post(
        Uri.parse('$uri/api/signup/'),
        body: jsonEncode(user),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      print(res.body);

      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            showSnackBar(
              context,
              'Account created! login with the same credentials!',
            );
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
