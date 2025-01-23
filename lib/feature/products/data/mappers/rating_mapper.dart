import 'package:products_screen/feature/products/data/model/rating_model.dart';
import 'package:products_screen/feature/products/domain/entities/rating.dart';

extension RatingMapper on RatingModel {
  Rating toEntity() => Rating(rate: rate, count: count);
}
