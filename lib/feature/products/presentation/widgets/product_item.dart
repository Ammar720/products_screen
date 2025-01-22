import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:products_screen/core/app_theme.dart';
import 'package:products_screen/feature/products/presentation/widgets/custom_read_more_text.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

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
                imageUrl:
                    'https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_.jpg',
                width: double.infinity,
                height: screenheight * 0.1,
                fit: BoxFit.contain,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
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
                const CustomReadMoreText(
                  trimLines: 1,
                  text: 'White Gold Plated Princess',
                ),
                const CustomReadMoreText(
                  trimLines: 1,
                  text:
                      'Classic Created Wedding Engagement Solitaire Diamond Promise Ring for Her. Gifts to spoil your love more for Engagement, Wedding, Anniversary, Valentines Day',
                ),
                SizedBox(height: screenheight * 0.004),
                Row(
                  children: [
                    Text('EGP 1,000 ', style: AppTheme.regularStyle),
                    SizedBox(width: screenwidth * 0.04),
                    Text('1,300 EGP', style: AppTheme.oldPrice),
                  ],
                ),
                Row(
                  children: [
                    Text('Reviews (4.8) ',
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
