import 'package:flutter_dotenv/flutter_dotenv.dart';

final String _serverUrl = dotenv.env["SERVER_URL"] ?? '';

class Urls {
  //Auth Url
  static String signUpUrl = "$_serverUrl/api/signup";
  static String signInUrl = "$_serverUrl/api/signin";
  static String tokenIsValid = "$_serverUrl/tokenIsValid";

  //Admin Url
  static String addProduct = "$_serverUrl/admin/add-product";
  static String getProducts = "$_serverUrl/admin/get-products";
  static String deleteProduct = "$_serverUrl/admin/delete-product";
}
