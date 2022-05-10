import 'package:flutter/material.dart';
import 'package:shoppingcatalog/models/product/product.dart';
import 'package:shoppingcatalog/screens/shopping_catalog/widgets/rectangle_container.dart';
import 'package:shoppingcatalog/shared/app_colors.dart';
import 'package:shoppingcatalog/shared/app_const.dart';
import 'package:shoppingcatalog/shared/app_sizes.dart';
import 'package:shoppingcatalog/shared/app_text_styles.dart';

import 'circle_container.dart';

class ProductCart extends StatelessWidget {
  final Product product;

  const ProductCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.size20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    from.toUpperCase(),
                    style: AppTextStyles.fontSize15FontWeight900,
                  ),
                  const SizedBox(height: AppSizes.size10),
                  Text(
                    "\$${product.price.toString()}",
                    style: AppTextStyles.fontSize15FontWeight400,
                  ),
                  const SizedBox(height: AppSizes.size10),
                  const CircleContainer(),
                ],
              ),
              Container(
                color: AppColors.white,
                alignment: Alignment.center, // use aligment
                child: Image.network(
                  product.image ?? '',
                  height: AppSizes.size350,
                  width: AppSizes.size200,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(product.category ?? '', style: AppTextStyles.fontSize15FontWeight500Blue),
              const Spacer(),
              CircleContainer(
                isText: true,
                rate: product.rating?.rate,
              ),
              const SizedBox(width: AppSizes.size10),
              RectangleContainer(count: product.rating?.count)
            ],
          ),
          const SizedBox(height: AppSizes.size10),
          Text(product.title ?? '', style: AppTextStyles.fontSize18FontWeight900),
          const SizedBox(height: AppSizes.size15),
          Text(product.description ?? '', style: AppTextStyles.fontSize14FontWeight500),
          const SizedBox(height: AppSizes.size10),
          const Divider(
            height: AppSizes.size2,
            color: AppColors.grey,
          ),
        ],
      ),
    );
  }
}
