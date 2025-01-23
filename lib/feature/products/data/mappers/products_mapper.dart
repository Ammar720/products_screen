import 'package:products_screen/feature/products/data/mappers/rating_mapper.dart';
import 'package:products_screen/feature/products/data/model/products_model.dart';
import 'package:products_screen/feature/products/domain/entities/products.dart';

extension ProductsMapper on ProductModel {
  Products toEntity() => Products(
        id: id,
        title: title,
        price: price,
        description: description,
        category: category,
        image: image,
        rating: rating.toEntity(),
      );
}
