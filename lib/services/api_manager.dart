import 'package:chopper/chopper.dart';
import 'package:shoppingcatalog/shared/app_const.dart';

part 'api_manager.chopper.dart';

@ChopperApi(baseUrl: baseUrl)
abstract class ApiManager extends ChopperService {
  static ApiManager create() => _$ApiManager();

  @Get(path: productsPath)
  Future<Response> getProducts();
}
