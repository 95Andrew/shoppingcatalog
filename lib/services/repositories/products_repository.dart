import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:shoppingcatalog/models/product/product.dart';
import 'package:shoppingcatalog/services/api_manager.dart';

class ProductsRepository {
  final _chopper = ChopperClient(
    services: [
      ApiManager.create(),
    ],
  );

  Future<List<Product>> getListProducts() async {
    final apiManager = _chopper.getService<ApiManager>();

    final response = await apiManager.getProducts();

    if (response.isSuccessful) {
      final List<dynamic> productsJson = json.decode(response.body);
      return productsJson.map((product) => Product.fromJson(product)).toList();
    } else {
      throw Exception('Error fetching');
    }
  }
}
