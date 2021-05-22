import 'package:get/state_manager.dart';
import 'package:get/route_manager.dart';
import "package:getx_demo/routes/app_pages.dart";

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 2), () {
      Get.offNamed(
        Routes.HOME,
      );
    });
  }

  /// avisa al destruir el widget
  //@override
  //void onClose() {
  //super.onClose();
  //print("Destruido wacho");
  //}
}
