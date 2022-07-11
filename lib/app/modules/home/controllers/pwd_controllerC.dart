import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PwdControllerC extends GetxController {
   GlobalKey<FormState> pwdFormKey = GlobalKey<FormState>();

  late TextEditingController CpasswordController, passwordController;
  var password= '';
  var Cpassword = '';
  var isPawwordHidden=true.obs;
  @override
  void onInit() {
    super.onInit();
    passwordController= TextEditingController();
    CpasswordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    CpasswordController.dispose();
    passwordController.dispose();
  }

  

  String? validatePassword(String value) {
    if (value.length < 6) {
      return "Password must be of 6 characters";
    }
    else  {
        
    }
    
    return null;
  }
  String? validateCPassword(String value1) {
    if (value1 != value1) {
      return "password must be egale  comfirm password ";
    }
    else  {
        
    }
    
    return null;
  }

  void checkLogin() {
    final isValid = pwdFormKey.currentState!.validate();
    if (!isValid) {
      return ;
    }
    pwdFormKey.currentState!.save();
    
  }

  bool valid(){
    print(passwordController.text);
    print(CpasswordController.text);
    if(passwordController.text==CpasswordController.text){
      checkLogin();
      return true;
     
    } else {
      return false;
    }
  }

    
}