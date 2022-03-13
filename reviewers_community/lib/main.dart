import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/data/services/theme_service.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData.dark(),
      themeMode: ThemeService().theme,
      debugShowCheckedModeBanner: false,
    ),
  );
}
