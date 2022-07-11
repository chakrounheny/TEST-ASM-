import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PwdControllerB extends GetxController {
   GlobalKey<FormState> pwdBFormKey = GlobalKey<FormState>();

  late TextEditingController emailController, passwordController;
  var email = Get.arguments;
  var password = '';
  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return "Password must be of 6 characters";
    }
    return null;
  }

  void checkLogin() {
    final isValid = pwdBFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    pwdBFormKey.currentState!.save();
    Get.toNamed("/pwdC");
  }
}