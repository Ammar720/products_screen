import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:products_screen/core/error/handle_dio_error.dart';
import 'package:products_screen/feature/products/data/data_source/remote_data_source.dart';
import 'package:products_screen/feature/products/data/model/products_model.dart';

@Singleton(as: RemoteDataSource)
class RemoteApiDataSource implements RemoteDataSource {
  final dio = Dio();

  @override
  Future<List<ProductModel>> getProducts() async {
    try {
      final response = await dio.get('https://fakestoreapi.com/products');
      return response.data
          .map<ProductModel>(
            (product) => ProductModel.fromJson(product),
          )
          .toList();
   } on DioException catch (dioError) {
      final errorMessage = HandleDioError.handleDioError(dioError);
      throw Exception(errorMessage);
    } catch (exception) {
      throw Exception('Unexpected error occurred: ${exception.toString()}');
    }
  }
}
