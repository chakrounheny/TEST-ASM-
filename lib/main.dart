import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/views/Forgetpwd.dart';
import 'package:flutter_application_1/app/modules/home/views/home_view.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      title:"Test App",
      //  home :HomeView(),
  initialRoute: "/",
  getPages: [
    GetPage(name: "/", page:() => HomeView() )
  ],
  
    );
  
  }
}
