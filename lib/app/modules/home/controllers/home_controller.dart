import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
   GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  late TextEditingController loginController, passwordController;
  var login = '';
  var password = '';
  var isPawwordHidden=true.obs;
  @override
  void onInit() {
    super.onInit();
    loginController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    loginController.dispose();
    passwordController.dispose();
  }

  String? validateLogin(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid login ";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return "Password must be of 6 characters";
    }
    else  {
       value.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]')); 
    }
    
    return null;
  }

  bool checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return false;
    }
    loginFormKey.currentState!.save();
    return true;
  }

    
}
