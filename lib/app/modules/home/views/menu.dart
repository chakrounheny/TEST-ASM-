import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/menucontroller.dart';

class MENU extends GetView<MenuController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" liste des categories "),
      ),
      body: Container(
        child: FutureBuilder(
            future: controller.getCategorie,
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(child: Text("Loding ......")),
                );
              } else {
                return ListView.builder(
                    itemCount: controller.listcategory.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          child: Card(
                              child: InkWell(
                        onTap: () async {
                          Get.toNamed("/details",
                              arguments: controller.listcategory[index]);
                        },
                        child: ListTile(
                          title: Text(controller.listcategory[index]),
                        ),
                      )));
                    });
              }
            }),
      ),
    );
  }
}
