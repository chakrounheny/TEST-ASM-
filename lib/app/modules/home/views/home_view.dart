import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/views/menu.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView  extends GetView<HomeController> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 60, left: 16, right: 16),
          width: context.width,
          height: context.height,
          child: SingleChildScrollView(
            child: Form(
              key: controller.loginFormKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  
                  SizedBox(
                    height: 20,
                  ),
                  
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      labelText: "login",
                      prefixIcon: Icon(Icons.group),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    controller: controller.loginController,
                    onSaved: (value) {
                      controller.login = value!;
                    },
                    validator: (value) {
                      return controller.validateLogin(value!);
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Obx(() =>
                  TextFormField(
                    obscureText:controller.isPawwordHidden.value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      
                      suffixIcon: InkWell(
                           onTap:() {
                            controller.isPawwordHidden.value =! controller.isPawwordHidden.value;
                           },
                          child: const Icon(
                            Icons.visibility,
                          ),
                        )
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    
                    controller: controller.passwordController,
                    onSaved: (value) {
                      controller.password = value!;
                    },
                    validator: (value) {
                      return controller.validatePassword(value!);
                    },
                  ),
                  ),
                  Align(
  alignment: Alignment.topRight,
  child:Padding(
    padding:const EdgeInsets.symmetric(
      vertical: 2,horizontal: 20),
      child:TextButton(
        onPressed: () => Get.toNamed("/pwd"),
        child: Text (
          "Forgot password ",
          style:TextStyle(
            color: Colors.black,
            decoration: TextDecoration.underline),
             )
        ),

         ),
     ),
                  SizedBox(
                    height: 16,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: context.width),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(Color.fromARGB(255, 247, 130, 20)),
                        padding: MaterialStateProperty.all(EdgeInsets.all(14)),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      onPressed: () {
                        if(controller.checkLogin())
                          Get.toNamed("/menu");
                      },
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
 
}
