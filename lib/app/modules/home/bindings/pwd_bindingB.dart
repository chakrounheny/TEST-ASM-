import 'package:get/get.dart';

import '../controllers/pwd_controllerB.dart';

class PwdBindingB extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PwdControllerB>(
      () => PwdControllerB(),
    );
  }
}