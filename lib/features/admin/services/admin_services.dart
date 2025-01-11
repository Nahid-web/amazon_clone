import 'dart:convert';
import 'dart:io';

import 'package:amazon_clone/constants/config.dart';
import 'package:amazon_clone/constants/error_handeling.dart';
import 'package:amazon_clone/constants/utils.dart';
import 'package:amazon_clone/models/product.dart';
import 'package:amazon_clone/providers/user_provider.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class AdminServices {
  void sellProduct({
    required BuildContext context,
    required String name,
    required String description,
    required double price,
    required double quantity,
    required String category,
    required List<File> images,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    String _cloudinaryCloudName = dotenv.env['CLOUDINARY_CLOUD_NAME'] ?? '';
    String _cloudinaryUploadPreset =
        dotenv.env['CLOUDINARY_UPLOAD_PRESET'] ?? '';
    try {
      final cloudinary =
          CloudinaryPublic(_cloudinaryCloudName, _cloudinaryUploadPreset);
      List<String> imageUrls = [];

      for (int i = 0; i < images.length; i++) {
        CloudinaryResponse res = await cloudinary.uploadFile(
          CloudinaryFile.fromFile(images[i].path, folder: "AmazonClone/$name"),
        );
        imageUrls.add(res.secureUrl);
      }

      Product product = Product(
        name: name,
        description: description,
        images: imageUrls,
        category: category,
        price: price,
        quantity: quantity,
      );
      // add product
      http.Response res = await http.post(
        Uri.parse(Urls.addProduct),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token!,
        },
        body: jsonEncode(product),
      );

      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            showSnackBar(context, 'Product Added Successfully!');
            Navigator.pop(context);
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  //get all the product
  Future<List<Product>> fetchAllProducts(BuildContext context) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    List<Product> proudctList = [];

    try {
      http.Response res = await http.get(Uri.parse(Urls.getProducts), headers: {
        'Content-Type': 'application/json',
        'x-auth-token': userProvider.user.token!,
      });

      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            for (int i = 0; i < jsonDecode(res.body).length; i++) {
              proudctList.add(Product.fromJson(jsonDecode(res.body)[i]));
              debugPrint(
                  "${(Product.fromJson(jsonDecode(res.body)[i])).toJson()}");
            }
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
    return proudctList;
  }

  //delete a product
  void deleteProduct({
    required BuildContext context,
    required Product product,
    required VoidCallback onSuccess,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);

    try {
      http.Response res = await http.post(
        Uri.parse(Urls.deleteProduct),
        headers: {
          'Content-Type': 'application/json',
          'x-auth-token': userProvider.user.token!,
        },
        body: jsonEncode({
          'id': product.id,
        }),
      );

      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            onSuccess();
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
