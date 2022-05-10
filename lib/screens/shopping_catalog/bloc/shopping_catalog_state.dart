part of 'shopping_catalog_bloc.dart';

@immutable
abstract class ShoppingCatalogState {}

class ShoppingCatalogInitialState extends ShoppingCatalogState {}

class ShoppingCatalogLoadingState extends ShoppingCatalogState {}

class ShoppingCatalogLoadedState extends ShoppingCatalogState {
  final List<Product> productsList;

  ShoppingCatalogLoadedState(this.productsList);
}

class ShoppingCatalogErrorStat extends ShoppingCatalogState {}
