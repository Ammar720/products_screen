import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:products_screen/feature/products/domain/use_cases/get_products.dart';
import 'package:products_screen/feature/products/presentation/cubit/products_state.dart';

@singleton
class ProductsCubit extends Cubit<ProductsState> {
  final GetProducts _getProducts;

  ProductsCubit(this._getProducts) : super(ProductsInitial());

  Future<void> getProducts() async {
    emit(ProductsLoading());
    final response = await _getProducts();
    response.fold((failure) => emit(ProductsError(failure.message)),
        (products) => emit(ProductsScuccess(products)));
  }
}
