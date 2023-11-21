import 'package:flutter/material.dart';
import 'package:shoe_project_app/utils/reponsive/size_config.dart';

extension ThemeExtension on BuildContext {
  // BaseAppTheme get currentTheme => MainAppPage.of(this).themeUtil.appTheme;

  // ThemeData get theme => Theme.of(this);

  // BaseThemeData get appTheme => MainAppPage.of(this).themeUtil.getAppTheme();

  // AppThemeUtil get themeUtil => MainAppPage.of(this).themeUtil;

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
