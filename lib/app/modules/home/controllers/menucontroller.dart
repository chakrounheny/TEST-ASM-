import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/bindings/pwd_binding.dart';
import 'package:flutter_application_1/app/modules/home/views/Forgetpwd.dart';
import 'package:flutter_application_1/app/modules/home/views/ForgetpwdB.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  final GlobalKey<FormState> pwdFormKey = GlobalKey<FormState>();
 late Future<bool> getCategorie;
 List listcategory=[];
   @override
  void onInit() {
    super.onInit();
   getCategorie= getCategories();
  }
  
  void checkLogin() {
    final isValid = pwdFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    pwdFormKey.currentState!.save();
    
  
    
  }

  Future<bool> getCategories() async {
    final response = (await Dio().get('https://api.chucknorris.io/jokes/categories')).data;
    listcategory=List.of(response);
    print(listcategory);
    return true;
  }
}
