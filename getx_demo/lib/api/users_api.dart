import 'dart:convert';
import "package:http/http.dart" as http;
import 'package:getx_demo/models/character.dart';

class UsersApi {
  UsersApi._internal();
  static UsersApi _instance = UsersApi._internal();
  static UsersApi get instance => _instance;

  Future<Character> getUsers() async {
    try {
      Character lista;
      var response = await http
          .get(Uri.parse('https://rickandmortyapi.com/api/character'));
      var respuesta = json.decode(response.body);
      print(respuesta["results"]);
      lista = Character.fromJson(response.body);
      return lista;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
