import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:products_screen/core/error/failure.dart';
import 'package:products_screen/feature/products/data/data_source/remote_data_source.dart';
import 'package:products_screen/feature/products/data/mappers/products_mapper.dart';
import 'package:products_screen/feature/products/domain/entities/products.dart';
import 'package:products_screen/feature/products/domain/repositories/products_repository.dart';

@Singleton(as: ProductsRepository)
class ProductsRepsitoryImpl implements ProductsRepository {
  final RemoteDataSource _remoteDataSource;
  ProductsRepsitoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, List<Products>>> getProducts() async {
    try {
      final response = await _remoteDataSource.getProducts();
      return Right(response.map((product) => product.toEntity()).toList());
    } catch (exception) {
      return Left(Failure(message: exception.toString()));
    }
  }
}
