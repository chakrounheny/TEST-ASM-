import 'package:get/get.dart';

import '../controllers/menucontroller.dart';

class menubinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuController>(
      () => MenuController(),
    );
  }
}