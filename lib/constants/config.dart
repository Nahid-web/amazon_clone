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

  //cardApi
  static String removeCartUrl = "$_serverUrl/api/remove-from-cart";

  //fetch category products
  static String fetchCategoryProductsUrl = "$_serverUrl/api/products?category";
  static String fetchDealOfDayUrl = "$_serverUrl/api/deal-of-day";

  //Cart Url
  static String addToCartUrl = "$_serverUrl/api/add-to-cart";
  static String rateProductUrl = "$_serverUrl/api/rate-product";
}
