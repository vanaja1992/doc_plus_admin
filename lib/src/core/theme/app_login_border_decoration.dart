import 'package:doc_plus_admin/src/core/constants/app_colors.dart';
import 'package:flutter/material.dart';


class AppLoginBorderDecoration{

  static appLoginBorderDecoration({Color borderColor = AppColors.menuColor,double radius = 40.00}){
    return BoxDecoration(
        borderRadius: BorderRadius.only(
        topRight: Radius.circular(radius),
    topLeft: Radius.circular(radius),
    bottomRight: Radius.circular(radius),
    bottomLeft: Radius.circular(radius)),
      color: borderColor
    );

  }

}
