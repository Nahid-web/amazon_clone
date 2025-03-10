import 'dart:convert';

import 'package:amazon_clone/constants/config.dart';
import 'package:amazon_clone/constants/error_handeling.dart';
import 'package:amazon_clone/constants/utils.dart';
import 'package:amazon_clone/models/product.dart';
import 'package:amazon_clone/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class HomeServices {
  Future<List<Product>> fetchCategoryProducts({
    required BuildContext context,
    required String category,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    List<Product> productList = [];

    try {
      http.Response res = await http.get(
        Uri.parse('${Urls.fetchCategoryProductsUrl}=$category'),
        headers: {
          'Content-Type': 'application/json',
          'x-auth-token': userProvider.user.token!,
        },
      );

      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            for (int i = 0; i < jsonDecode(res.body).length; i++) {
              productList.add(Product.fromJson(jsonDecode(res.body)[i]));
              debugPrint(
                "${(Product.fromJson(jsonDecode(res.body)[i])).toJson()}",
              );
            }
          });
    } catch (e) {
      print(e);
    }
    return productList;
  }

  Future<Product> fetchDealOfDay({
    required BuildContext context,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    Product product = Product();

    try {
      http.Response res =
          await http.get(Uri.parse(Urls.fetchDealOfDayUrl), headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'x-auth-token': userProvider.user.token!,
      });

      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            product = Product.fromJson(json.decode(res.body));
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
    return product;
  }
}
