import 'package:flutter_application_1/app/modules/home/controllers/pwd_controllerB.dart';
import 'package:flutter_application_1/app/modules/home/controllers/pwdcontroller.dart';
import 'package:get/get.dart';

import 'package:flutter_application_1/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_application_1/app/modules/home/views/home_view.dart';
import 'package:flutter_application_1/app/modules/home/bindings/pwd_binding.dart';
import 'package:flutter_application_1/app/modules/home/views/Forgetpwd.dart';
import 'package:flutter_application_1/app/modules/home/bindings/pwd_bindingB.dart';
import 'package:flutter_application_1/app/modules/home/views/ForgetpwdB.dart';
import 'package:flutter_application_1/app/modules/home/bindings/pwd_bindingC.dart';
import 'package:flutter_application_1/app/modules/home/views/ForgetpwdC.dart';
import 'package:flutter_application_1/app/modules/home/bindings/menu_binding.dart';
import 'package:flutter_application_1/app/modules/home/views/menu.dart';
import 'package:flutter_application_1/app/modules/home/bindings/details_binding.dart';
import 'package:flutter_application_1/app/modules/home/views/details.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(), 
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Pwd.pwd,
      page: () => Forgetpwd(), 
      binding: PwdBinding(),
    ),
    GetPage(
      name: _PwdB.pwdB,
      page: () => ForgetpwdB(), 
      binding: PwdBindingB(),
    ),
    GetPage(
      name: _PwdC.pwdC,
      page: () => ForgetpwdC(), 
      binding: PwdBindingC(),
    ),
    GetPage(
      name: _MENU.menu,
      page: () => MENU(), 
      binding: menubinding(),
    ),
    GetPage(
      name: _DETAILS.details,
      page: () => details(), 
      binding: detailsbinding(),
    ),
  ];
}

