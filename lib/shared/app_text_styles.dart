import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  static const _fontFamilyThin = FontWeight.w100;
  static const _fontFamilyExtraLight = FontWeight.w200;
  static const _fontFamilyLight = FontWeight.w300;
  static const _fontFamilyNormal = FontWeight.w400;
  static const _fontFamilyMedium = FontWeight.w500;
  static const _fontFamilySemiBold = FontWeight.w600;
  static const _fontFamilyBold = FontWeight.w700;
  static const _fontFamilyExtraBold = FontWeight.w800;
  static const _fontFamilyBlack = FontWeight.w900;

  static const TextStyle fontSize15FontWeight900 = TextStyle(
    fontSize: 15,
    fontWeight: _fontFamilyBlack,
    color: AppColors.black,
  );

  static const TextStyle fontSize18FontWeight900 = TextStyle(
    fontSize: 18,
    fontWeight: _fontFamilyBlack,
    color: AppColors.black,
  );

  static const TextStyle fontSize15FontWeight400 = TextStyle(
    fontSize: 15,
    fontWeight: _fontFamilyNormal,
    color: AppColors.black,
  );

  static const TextStyle fontSize15FontWeight500Blue = TextStyle(
    fontSize: 15,
    fontWeight: _fontFamilySemiBold,
    color: AppColors.blue,
  );

  static const TextStyle fontSize10FontWeight600 = TextStyle(
    fontSize: 10,
    fontWeight: _fontFamilySemiBold,
    color: AppColors.white,
  );

  static const TextStyle fontSize14FontWeight500 = TextStyle(
    fontSize: 14,
    fontWeight: _fontFamilyMedium,
    color: AppColors.black,
  );

}
