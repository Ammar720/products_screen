import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:products_screen/core/error/failure.dart';
import 'package:products_screen/feature/products/domain/entities/products.dart';
import 'package:products_screen/feature/products/domain/repositories/products_repository.dart';

@singleton
class GetProducts {
  final ProductsRepository repository;
  
  GetProducts({required this.repository});

  Future<Either<Failure, List<Products>>> call() async {
    return await repository.getProducts();
  }
}
