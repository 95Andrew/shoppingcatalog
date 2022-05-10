import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppingcatalog/screens/shopping_catalog/widgets/error_content.dart';
import 'package:shoppingcatalog/screens/shopping_catalog/widgets/shopping_catalog_content.dart';

import 'bloc/shopping_catalog_bloc.dart';

class ShoppingCatalogScreen extends StatelessWidget {
  const ShoppingCatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocBuilder<ShoppingCatalogBloc, ShoppingCatalogState>(
          builder: (context, state) {
            if (state is ShoppingCatalogLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is ShoppingCatalogLoadedState) {
              return ShoppingCatalogContent(
                productsList: state.productsList,
              );
            }
            if (state is ShoppingCatalogErrorStat) {
              return const ErrorContent();
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
