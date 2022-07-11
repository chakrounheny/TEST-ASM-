import 'package:get/get.dart';

import '../controllers/details_controller.dart';

class detailsbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<detailsController>(
      () => detailsController(),
    );
  }
}