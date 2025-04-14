import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/core/app_route.dart';
import 'package:jsdt_app/core/env.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';

Future main() async {
  return Env();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      getPages: AppRoute.routes,
      initialRoute: AppRoute.initialRoute,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kMainColor),
        menuTheme: MenuThemeData(
          style: MenuStyle(
            padding: WidgetStateProperty.all(EdgeInsets.zero),
          ),
        ),
        menuButtonTheme: MenuButtonThemeData(
          style: ButtonStyle(
            padding: WidgetStateProperty.all(EdgeInsets.zero),
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          ),
        ),
      ),
      builder: (context, child) {
        child = EasyLoading.init()(context, child);
        return MediaQuery(data: MediaQuery.of(context), child: child);
      },
    );
  }
}
