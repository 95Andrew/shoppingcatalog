import 'package:flutter/material.dart';
import 'package:shoppingcatalog/models/product/product.dart';
import 'package:shoppingcatalog/screens/shopping_catalog/widgets/product_cart.dart';

class ShoppingCatalogContent extends StatelessWidget {
  final List<Product> productsList;

  const ShoppingCatalogContent({
    Key? key,
    required this.productsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productsList.length,
      itemBuilder: (BuildContext contex, int index) {
        return ProductCart(product: productsList[index]);
      },
    );
  }
}
