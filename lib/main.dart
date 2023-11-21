import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:shoe_project_app/common/translations/localization_service.dart';
import 'package:shoe_project_app/routes/app_route_constant.dart';
import 'package:shoe_project_app/routes/app_routes.dart';
import 'package:shoe_project_app/utils/reponsive/size_config.dart';

import 'utils/theme/app_theme_util.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  var getMaterialApp = GetMaterialApp(
    supportedLocales: [
      Locale('en', 'US'),
      Locale('ko', 'KR'),
    ],
    localizationsDelegates: [],
    locale: LocalizationService.locale,
    fallbackLocale: LocalizationService.fallbackLocale,
    translations: LocalizationService(),
    localeResolutionCallback: (locale, supportedLocales) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale?.languageCode &&
            supportedLocale.countryCode == locale?.countryCode) {
          return supportedLocale;
        }
      }
      return supportedLocales.first;
    },
    debugShowCheckedModeBanner: false,
    getPages: AppPages.pages,
    initialRoute: AppRoutes.SPLASH,
    builder: EasyLoading.init(
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: child!,
      ),
    ),
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig.init(
              constraints,
              designScreenWidth: 375,
              desginScreenHeight: 812,
            );

            return getMaterialApp;
          },
        );
      },
    ));
  });
}
