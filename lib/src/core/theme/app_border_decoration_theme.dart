import 'package:doc_plus_admin/src/core/constants/app_colors.dart';
import 'package:doc_plus_admin/src/core/constants/app_dimen.dart';
import 'package:flutter/material.dart';


class AppBorderDecorationTheme{

  static appBorderDecoration({Color borderColor = AppColors.menuColor,double radius = 12.00}){
    return BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(color: borderColor, width: AppDimen.boxDecorationRadiusWidth),
    );
  }

}
