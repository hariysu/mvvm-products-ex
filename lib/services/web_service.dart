import 'package:http/http.dart' as http;
import '../constants/application_constants.dart';
import '../models/products.dart';
import 'dart:convert';

class WebService {
  //
  Future<Products?> fetchProducts() async {
    final response = await http.get(Uri.parse(ApplicationConstants.API_URL));
    if (response.statusCode == 200) {
      return Products.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
    }
    return null;
  }
}
