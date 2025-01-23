import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:products_screen/core/resources/app_theme.dart';
import 'package:products_screen/core/widgets/custom_read_more_text.dart';
import 'package:products_screen/core/widgets/loading_indicator.dart';
import 'package:products_screen/feature/products/domain/entities/products.dart';

class ProductItem extends StatelessWidget {
  final Products product;
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppTheme.borderColor, width: 2),
        shape: BoxShape.rectangle,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              CachedNetworkImage(
                imageUrl: product.image,
                width: double.infinity,
                height: screenheight * 0.1,
                fit: BoxFit.contain,
                placeholder: (context, url) => const LoadingIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset('assets/image/addToFavIcon.png'),
              ),
            ],
          ),
          SizedBox(height: screenheight * 0.005),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomReadMoreText(
                  trimLines: 1,
                  text: product.title,
                ),
                CustomReadMoreText(
                  trimLines: 1,
                  text: product.description,
                ),
                SizedBox(height: screenheight * 0.004),
                Row(
                  children: [
                    Text('${product.price} ', style: AppTheme.regularStyle),
                  ],
                ),
                Row(
                  children: [
                    Text('Reviews (${product.rating.rate}) ',
                        style: AppTheme.regularStyle.copyWith(fontSize: 12)),
                    Icon(
                      Icons.star,
                      color: AppTheme.gold,
                      size: screenwidth * 0.04,
                    ),
                    const Spacer(),
                    Icon(
                      Icons.add_circle,
                      color: AppTheme.primary,
                      size: screenwidth * 0.065,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
