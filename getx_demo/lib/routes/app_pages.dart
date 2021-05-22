import 'package:get/get.dart';
import 'package:getx_demo/pages/home_page.dart';
import 'package:getx_demo/pages/splash_page.dart';
import "package:getx_demo/bindings/home_binding.dart";
import "package:getx_demo/bindings/detail_binding.dart";
import "package:getx_demo/pages/detail_page.dart";
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => SplashPage(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.DETAIL,
      page: () => DetailPage(),
      binding: DetailBinding(),
    ),
  ];
}
