import 'package:get/get.dart';

import '../controllers/pwdcontroller.dart';

class PwdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PwdController>(
      () => PwdController(),
    );
  }
}