import 'package:products_screen/feature/products/domain/entities/products.dart';

abstract class ProductsState {}

class ProductsInitial extends ProductsState {}

class ProductsLoading extends ProductsState {}

class ProductsScuccess extends ProductsState {
  final List<Products> products;

  ProductsScuccess(this.products);
}

class ProductsError extends ProductsState {
  final String message;

  ProductsError(this.message);
}
