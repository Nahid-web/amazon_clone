import 'package:flutter_dotenv/flutter_dotenv.dart';

final String _serverUrl = dotenv.env["SERVER_URL"] ?? '';

class Urls {
  //Auth Url
  static String signUpUrl = "$_serverUrl/api/signup";
  static String signInUrl = "$_serverUrl/api/signin";
  static String tokenIsValidUrls = "$_serverUrl/tokenIsValid";

  //Admin Url
  static String addProductUrls = "$_serverUrl/admin/add-product";
  static String getProductsUrls = "$_serverUrl/admin/get-products";
  static String deleteProductUrls = "$_serverUrl/admin/delete-product";

  //User Address Url
  static String saveUserAddressUrl = "$_serverUrl/api/save-user-address";
  static String orderProductUrl = "$_serverUrl/api/order";
}
