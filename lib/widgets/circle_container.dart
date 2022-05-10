import 'package:flutter/material.dart';
import 'package:shoppingcatalog/shared/app_colors.dart';
import 'package:shoppingcatalog/shared/app_sizes.dart';
import 'package:shoppingcatalog/shared/app_text_styles.dart';

class CircleContainer extends StatelessWidget {
  final bool isText;
  final double? rate;

  const CircleContainer({
    Key? key,
    this.isText = false,
    this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isText ? AppSizes.size25 : AppSizes.size40,
      height: isText ? AppSizes.size25 : AppSizes.size40,
      decoration: const BoxDecoration(
        color: AppColors.black,
        shape: BoxShape.circle,
      ),
      child: isText
          ? Center(
              child: Text(
                rate.toString(),
                style: AppTextStyles.fontSize10FontWeight600,
              ),
            )
          : const Icon(
              Icons.shopping_cart,
              color: AppColors.white,
              size: AppSizes.size20,
            ),
    );
  }
}
