import 'package:flutter/material.dart';
import 'package:products_screen/core/app_theme.dart';
import 'package:products_screen/feature/products/presentation/widgets/product_item.dart';

class ProductsScreen extends StatelessWidget {
  static const String routeName = '/products';
  ProductsScreen({super.key});

  final List<ProductItem> products = List.generate(
    10,
    (index) => const ProductItem(),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.white,
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) => products[index],
          itemCount: products.length,
        ),
      ),
    );
  }
}
