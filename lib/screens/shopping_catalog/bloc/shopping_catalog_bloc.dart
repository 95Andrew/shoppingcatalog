import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shoppingcatalog/models/product/product.dart';
import 'package:shoppingcatalog/services/repositories/products_repository.dart';

part 'shopping_catalog_event.dart';

part 'shopping_catalog_state.dart';

class ShoppingCatalogBloc extends Bloc<ShoppingCatalogEvent, ShoppingCatalogState> {
  final ProductsRepository _productsRepository;

  ShoppingCatalogBloc(
    this._productsRepository,
  ) : super(ShoppingCatalogInitialState()) {
    on<LoadProductsEvent>(
      (event, emit) async {
        emit(ShoppingCatalogLoadingState());
        try {
          final List<Product> productsList = await _productsRepository.getListProducts();

          emit(ShoppingCatalogLoadedState(productsList));
        } catch (_) {
          emit(ShoppingCatalogErrorStat());
        }
      },
    );
  }
}
