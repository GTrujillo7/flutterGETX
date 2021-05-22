import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/home_controller.dart';
import 'package:getx_demo/models/character.dart';
import 'package:getx_demo/routes/app_pages.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) {
        return Scaffold(
          body: ListView.builder(
            itemBuilder: (context, index) {
              final Result character = _.characters.results[index];
              return ListTile(
                title: Text(character.name),
                subtitle: Text(character.status),
                onTap: () {
                  Get.toNamed(Routes.DETAIL, arguments: character);
                },
              );
            },
            itemCount: _.characters.results.length,
          ),
        );
      },
    );
  }
}
