import 'package:flutter/material.dart';
import 'package:shoe_project_app/utils/reponsive/size_config.dart';
import 'package:shoe_project_app/utils/theme/app_theme_util.dart';
import 'package:shoe_project_app/utils/theme/base_theme_data.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  BaseThemeData get appTheme => AppThemeUtil.instance.getAppTheme();

  double? width(double? width) => SizeConfig.instance.getWidth(width);

  double? height(double? height) => SizeConfig.instance.getHeight(height);

  EdgeInsets padding(
      {double? left,
      double? right,
      double? top,
      double? bottom,
      double? all,
      double? horizontal,
      double? vertical}) {
    if (all != null) {
      return SizeConfig.instance.paddingAll(all: all) ?? EdgeInsets.all(0);
    } else if (horizontal != null || vertical != null) {
      return SizeConfig.instance
              .paddingSymmetric(horizontal: horizontal, vertical: vertical) ??
          EdgeInsets.symmetric();
    } else {
      return SizeConfig.instance.paddingOnly(
              left: left, right: right, top: top, bottom: bottom) ??
          EdgeInsets.only();
    }
  }
}
