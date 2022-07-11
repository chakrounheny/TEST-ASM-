import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/pwd_controllerB.dart';

class ForgetpwdB extends GetView<PwdControllerB> {

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
              key: controller.pwdBFormKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Please enter your code sent to "+controller.email,
                    style: TextStyle(fontSize: 20, color: Colors.black87),
                  ),
                  SizedBox(
                    height: 20,
                  ),
               
                  TextFormField(
                    
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      labelText: "Code",
                      prefixIcon: Icon(Icons.code),
                      
                      suffixIcon: InkWell(
                           onTap:() {
                            
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
                        "Continue                                                          >",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      onPressed: () {
                        controller.checkLogin();
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