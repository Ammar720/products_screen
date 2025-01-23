import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_screen/core/resources/app_theme.dart';
import 'package:products_screen/core/di/service_locator.dart';
import 'package:products_screen/core/widgets/error_indicator.dart';
import 'package:products_screen/core/widgets/loading_indicator.dart';
import 'package:products_screen/feature/products/presentation/cubit/products_cubit.dart';
import 'package:products_screen/feature/products/presentation/cubit/products_state.dart';
import 'package:products_screen/feature/products/presentation/widgets/product_item.dart';

class ProductsScreen extends StatelessWidget {
  static const String routeName = '/products';

  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductsCubit>(
      create: (context) => serviceLocator<ProductsCubit>()..getProducts(),
      child: Scaffold(
        backgroundColor: AppTheme.white,
        body: SafeArea(
          child: BlocBuilder<ProductsCubit, ProductsState>(
            builder: (context, state) {
              if (state is ProductsLoading) {
                return const LoadingIndicator();
              } else if (state is ProductsError) {
                return ErrorIndicator(message: state.message);
              } else if (state is ProductsScuccess) {
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  padding: const EdgeInsets.all(10),
                  itemBuilder: (context, index) =>
                      ProductItem(product: state.products[index]),
                  itemCount: state.products.length,
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}

