import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:reve/home/home_page.dart';

import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Login",
            style: TextStyle(color: Colors.blue, fontSize: 18),
          ),
          TextField(
            controller: loginController.emailCtrller,
          ),
          TextField(
            controller: loginController.pwdCtrller,
            obscureText: true,
          ),
          TextButton(
            onPressed: () {
              if (loginController.emailCtrller.text.isNotEmpty &&
                  loginController.pwdCtrller.text.isNotEmpty) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(
                              email: loginController.emailCtrller.text,
                              pwd: loginController.pwdCtrller.text,
                            )));
              }
            },
            child: const Text("LOGIN"),
          ),
        ],
      ),
    );
  }
}
