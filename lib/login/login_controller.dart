import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoginController extends GetxController {
  TextEditingController emailCtrller = TextEditingController();
  TextEditingController pwdCtrller = TextEditingController();
  getUserDetails() {
    print("/* User details*/");
    print("email: ${emailCtrller.text}");
    print("pwd: ${pwdCtrller.text}");
    update();
  }
}
