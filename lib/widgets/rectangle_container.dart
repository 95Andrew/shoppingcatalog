import 'package:flutter/material.dart';
import 'package:shoppingcatalog/shared/app_colors.dart';
import 'package:shoppingcatalog/shared/app_sizes.dart';
import 'package:shoppingcatalog/shared/app_text_styles.dart';

class RectangleContainer extends StatelessWidget {
  final int? count;

  const RectangleContainer({
    Key? key,
    this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.size5,
        vertical: AppSizes.size2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.size5),
        color: AppColors.grey,
      ),
      child: Center(
        child: Text(
          count == null ? '' : count.toString(),
          style: AppTextStyles.fontSize10FontWeight600,
        ),
      ),
    );
  }
}
