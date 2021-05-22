import 'package:get/state_manager.dart';
import 'package:getx_demo/api/users_api.dart';
import 'package:getx_demo/models/character.dart';

class HomeController extends GetxController {
  Character _characters;

  Character get characters => _characters;

  @override
  void onInit() {
    super.onInit();
    print("al iniciar aplicacion");
    _characters.results = [];
  }

  @override
  void onReady() {
    super.onReady();
    print("al cargar la pantalla");
    this.loadUsers();
  }

  Future<void> loadUsers() async {
    final data = await UsersApi.instance.getUsers();
    this._characters = data;
    update();
  }
}
