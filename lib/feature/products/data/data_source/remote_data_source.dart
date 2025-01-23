import 'package:products_screen/feature/products/data/model/products_model.dart';

abstract class RemoteDataSource {
  Future<List<ProductModel>> getProducts();
}
