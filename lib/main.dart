import 'package:complete_shop_app/routes/routes.dart';
import 'package:complete_shop_app/utils/app_strings.dart';
import 'package:complete_shop_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: AppStrings.appTitle,
        debugShowCheckedModeBanner: false,
        theme: ThemesApp.light,
        initialRoute: AppRoutes.welcomeScreen,
        getPages: AppRoutes.routes);
  }
}
