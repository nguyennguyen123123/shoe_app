import 'package:flutter/material.dart';
import 'package:shoe_project_app/utils/theme/base_app_theme.dart';
import 'package:shoe_project_app/utils/theme/base_theme_data.dart';

class AppThemeDefault
    extends BaseAppTheme<AppLightThemeDefault, AppDartThemeDefault> {
  @override
  AppDartThemeDefault get darkTheme => AppDartThemeDefault();

  @override
  AppLightThemeDefault get lightTheme => AppLightThemeDefault();
}

class AppLightThemeDefault extends BaseThemeData {}

class AppDartThemeDefault extends BaseThemeData {
  @override
  Color get background => Colors.black;
}
