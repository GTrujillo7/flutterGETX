import 'package:get/get.dart';
import 'package:getx_demo/models/character.dart';

class DetailController extends GetxController {
  Result character;

  @override
  void onInit() {
    super.onInit();
    character = Get.arguments ?? null;
  }
}
