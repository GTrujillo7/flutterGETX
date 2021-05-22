import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/detail_controller.dart';

class DetailPage extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(_.character.name),
          ),
          body: Container(
            child: Center(
              child: Image.network(_.character.image),
            ),
          ),
        );
      },
    );
  }
}
