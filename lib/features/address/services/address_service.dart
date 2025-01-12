import 'dart:convert';

import 'package:amazon_clone/constants/config.dart';
import 'package:amazon_clone/constants/error_handeling.dart';
import 'package:amazon_clone/constants/utils.dart';
import 'package:amazon_clone/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class AddressService {
  void saveUserAddress({
    required BuildContext context,
    required String address,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);

    try {
      http.Response res = await http.post(
        Uri.parse(Urls.saveUserAddressUrl),
        headers: {
          'Content-Type': 'application/json',
          'x-auth-token': userProvider.user.token!,
        },
        body: jsonEncode({
          'address': address,
        }),
      );

      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            userProvider.user.address = jsonDecode(res.body)['address'];
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  //get all the products
  void placeOrder({
    required BuildContext context,
    required String address,
    required double totalSum,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    try {
      http.Response res = await http.post(Uri.parse(Urls.orderProductUrl),
          headers: {
            'Content-Type': 'application/json',
            'x-auth-token': userProvider.user.token!,
          },
          body: jsonEncode({
            'cart': userProvider.user.cart,
            'address': address,
            'totalPrice': totalSum,
          }));
      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          showSnackBar(context, 'Your order has been placed!');
          userProvider.addCart([]);
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
