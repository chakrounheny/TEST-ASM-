import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/bindings/pwd_binding.dart';
import 'package:flutter_application_1/app/modules/home/views/Forgetpwd.dart';
import 'package:flutter_application_1/app/modules/home/views/ForgetpwdB.dart';
import 'package:get/get.dart';
import 'dart:convert';

class detailsController extends GetxController {

 late Future<bool> getCategorie;
   Category listcategory =Category(categories: ["categories"], created_at: "aze", icon_url: "icon_url", id: "id", updated_at: "updated_at", url: "url", value: "value");
   late String created="tets";
   @override
  void onInit() {
    super.onInit();
   getCategorie= getCategories();
  }
  

  Future<bool> getCategories() async {
    print(Get.arguments);
    
    final response = (await Dio().get('https://api.chucknorris.io/jokes/random?category='+Get.arguments)).data;
    print(response);
     listcategory=Category.fromJson(response);
     created = listcategory.created_at;
    print(listcategory.created_at);
    return true;
  }
}
class Category{
  late List categories;
  late String created_at ;
  late String icon_url; 
  late String id ;
  late String updated_at ;
  late String url;
  late String value ;
  Category({required this.categories,required this.created_at,required this.icon_url,required this.id,required this.updated_at,required this.url,required this.value});
  factory Category.fromJson(Map<String, dynamic> json) => Category(
     categories: json["categories"],
      created_at: json["created_at"],
     icon_url: json["icon_url"],
     id: json["id"],
     updated_at: json["updated_at"],
     url: json["url"],
     value: json["value"],
   );
  Map<String, dynamic> toMap() => {
        'categories': categories,
        'created_at': created_at,
        'icon_url': icon_url,
        'id': id,
        'updated_at': updated_at,
        'url': url,
        'value': value,
      };
}

