 import 'package:dartz/dartz.dart';
import 'package:products_screen/core/error/failure.dart';
import 'package:products_screen/feature/products/domain/entities/products.dart';

abstract class ProductsRepository {
  Future<Either<Failure, List<Products>>> getProducts();
}