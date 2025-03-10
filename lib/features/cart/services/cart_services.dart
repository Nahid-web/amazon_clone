import 'dart:convert';

import 'package:amazon_clone/constants/config.dart';
import 'package:amazon_clone/constants/error_handeling.dart';
import 'package:amazon_clone/constants/utils.dart';
import 'package:amazon_clone/models/product.dart';
import 'package:amazon_clone/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class CartServices {
  void removeFromCart({
    required BuildContext context,
    required Product product,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    try {
      http.Response res = await http.delete(
        Uri.parse('${Urls.removeCartUrl}/${product.id}'),
        headers: {
          'Content-Type': 'application/json',
          'x-auth-token': userProvider.user.token!,
        },
      );
      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            userProvider.addCart(jsonDecode(res.body)['cart']);
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
