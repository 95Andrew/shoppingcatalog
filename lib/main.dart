import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppingcatalog/screens/shopping_catalog/bloc/shopping_catalog_bloc.dart';
import 'package:shoppingcatalog/screens/shopping_catalog/shopping_catalog_screen.dart';
import 'package:shoppingcatalog/services/repositories/products_repository.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (BuildContext context) => ProductsRepository(),
          ),
        ],
        child: BlocProvider(
          create: (BuildContext context) => ShoppingCatalogBloc(
            RepositoryProvider.of<ProductsRepository>(context),
          )..add(
              LoadProductsEvent(),
            ),
          child: const ShoppingCatalogScreen(),
        ),
      ),
    );
  }
}
