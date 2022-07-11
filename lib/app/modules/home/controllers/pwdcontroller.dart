import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/bindings/pwd_binding.dart';
import 'package:flutter_application_1/app/modules/home/views/Forgetpwd.dart';
import 'package:flutter_application_1/app/modules/home/views/ForgetpwdB.dart';
import 'package:get/get.dart';

class PwdController extends GetxController {
   GlobalKey<FormState> pwdFormKey = GlobalKey<FormState>();

  late TextEditingController emailController, passwordController;
  var email = '';
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
    final isValid = pwdFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    pwdFormKey.currentState!.save();
    print(email);
    Get.toNamed("/pwdB",arguments: email);
    
  }
}
