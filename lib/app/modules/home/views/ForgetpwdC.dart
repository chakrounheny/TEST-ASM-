import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/views/home_view.dart';
import 'package:get/get.dart';

import '../controllers/pwd_controllerC.dart';

class ForgetpwdC extends GetView<PwdControllerC> {
  late String email;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
  title: Text("Forgot Password",style: TextStyle(
        color: Colors.orange[300],
      ),),
  automaticallyImplyLeading: false,
  leading: new IconButton(
    icon: new Icon(Icons.arrow_back, color: Colors.orange),
    onPressed: () => Navigator.of(context).pop(),
  ), 
),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 60, left: 16, right: 16),
          width: context.width,
          height: context.height,
          child: SingleChildScrollView(
            child: Form(
            key: controller.pwdFormKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Please enter your new password ",
                    style: TextStyle(fontSize: 20, color: Colors.black87),
                  ),
                  SizedBox(
                    height: 20,
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
                    validator: (value1) {
                      return controller.validatePassword(value1!);
                    },
                  ),
                  ),
                   Obx(() =>
                  TextFormField(
                    obscureText:controller.isPawwordHidden.value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      labelText: " confirm Password",
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
                    
                    controller: controller.CpasswordController,
                    onSaved: (value) {
                      controller.Cpassword = value!;
                    },
                    validator: (value1) {
                      return controller.validateCPassword(value1!);
                    },
                  ),
                  ),
                  
                 
                 
                  SizedBox(
                    height: 16,
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
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(Color.fromARGB(255, 247, 130, 20)),
                        padding: MaterialStateProperty.all(EdgeInsets.all(14)),
                      ),
                      child: Text(
                        "Valider",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      onPressed: () {
                        if(controller.valid()==true){
                          showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Modification accepter"),
                      content:
                          RaisedButton(child: Text("Ok"),onPressed: ()async{
                            Get.toNamed("/home");
                           // Get.to(HomeView());
                          },)
                    );
                  });
                        }else{showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Modification non accepter"),
                      content:Text("erreur mdp")
                         
                    );
                  });}
                        
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