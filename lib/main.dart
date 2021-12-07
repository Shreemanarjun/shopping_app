import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        breakpoints: const [
          ResponsiveBreakpoint.resize(350, name: MOBILE),
          ResponsiveBreakpoint.autoScale(600, name: TABLET),
          ResponsiveBreakpoint.resize(800, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
        ],
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    ),
  );
}
