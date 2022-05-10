import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppingcatalog/screens/shopping_catalog/bloc/shopping_catalog_bloc.dart';
import 'package:shoppingcatalog/shared/app_const.dart';

class ErrorContent extends StatelessWidget {

  const ErrorContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => BlocProvider.of<ShoppingCatalogBloc>(context).add(
          LoadProductsEvent(),
        ),
        child: Text(
          retry.toUpperCase(),
        ),
      ),
    );
  }
}