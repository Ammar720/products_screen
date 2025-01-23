import 'package:flutter/material.dart';
import 'package:products_screen/core/di/service_locator.dart';
import 'package:products_screen/feature/products/presentation/screens/products_screen.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        ProductsScreen.routeName: (context) => const ProductsScreen(),
      },
      initialRoute: ProductsScreen.routeName,
    );
  }
}
