import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/details_controller.dart';

class details  extends GetView<detailsController> {
 late Category category = controller.listcategory;
  
  @override
Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      title: Text(" liste des categories "),
    ),
    body:  Container(
        child: FutureBuilder(
            future: controller.getCategorie,
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(child: Text("Loding ......")),
                );
              } else {
                return Column(
                  children: [
                    (
                      
                      Text(category.value)
                    ),
                  ],
                );
              }
            }),
      ),
  );
}

}