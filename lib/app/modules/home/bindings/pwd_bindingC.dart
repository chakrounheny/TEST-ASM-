import 'package:get/get.dart';

import '../controllers/pwd_controllerC.dart';

class PwdBindingC extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PwdControllerC>(
      () => PwdControllerC(),
    );
  }
}