import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Product.dart';

class ApiService {
  Future<List<Product>> getProducts() async {
    final response = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
    );

    final data = jsonDecode(response.body);

    return data.map<Product>((json) {
      return Product.fromJson(json);
    }).toList();
  }
}
