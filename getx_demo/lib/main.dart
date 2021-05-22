import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_demo/bindings/splash_binding.dart';
import "package:getx_demo/routes/app_pages.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppPages.pages,
      initialRoute: Routes.INITIAL,
      initialBinding: SplashBinding(),
    );
  }
}
