import 'package:flutter/material.dart';

abstract class BaseThemeData {
  Color primaryColor = const Color(0XFF3663FF);
  Color secondaryColor = const Color(0XFFFFB934);
  Color thirdColor = const Color(0xFF00000);
  Color background = const Color(0XFFF5F5F5);

  Color primaryTextColor = const Color(0XFF3663FF);
  Color secondaryTextColor = const Color(0XFFFFB934);
  Color backgroundTextField = const Color(0XFFFFFFFF);

  Color nullColor = const Color(0XFF00FFFF);

  Color successColor = const Color(0XFF0CAF60);
  Color rejectColor = const Color(0XFFFF333B);
  Color warningColor = const Color(0XFFEC1C24);
  Color errorColor = const Color(0XFFFD4F4F);
  Color failColor = const Color(0XFFEC1C24);

  Color whiteText = const Color(0xFFFFFFFF);
  Color blackText = const Color(0xFF000000);

  Color fadeTextColor = Colors.grey;
  Color fadeBackgroundColor = Colors.green;

  Color progressBackground = const Color(0XFFBFC6CE);

  Color hintColor = const Color(0XFFB6B7B6);
  Color secondaryErrorColor = const Color(0xFFFEF2F2);
  Color successTextColor = const Color(0XFF0BA259);

  Color successBackgroundColor = const Color(0XFFD0F3E2);
  Color backgroundContainer = const Color(0xFFEFEFEF);

  Color borderColor = const Color(0XFFE1E1E1);
  Color dividerColor = const Color(0XFFC6C6C6);

  Color undefinedColor = Color(0xFF00FFFF);

  Color unselectedBackgroundColor = const Color(0xFFF2F2F7);

  Color darkGreen = const Color(0xFF0F4A35);

  Color greenLight = const Color(0xFFBADDD0);

  // Color activeSwitchBackground = const Color(0XFFD1E6FA);
  // Color activeSwitch = const Color(0XFF3B86E8);

}
