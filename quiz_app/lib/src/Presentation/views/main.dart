import 'package:flutter/material.dart';
import 'package:quiz_app/src/Presentation/views/home_page.dart';
import 'package:quiz_app/src/Presentation/views/registration_page.dart';
import 'package:quiz_app/src/Presentation/views/login_page.dart';
import 'package:quiz_app/src/Presentation/views/forget_password_page.dart';
export 'package:quiz_app/src/Presentation/views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
     RegistraionPage register = RegistraionPage(
        nameController: nameController,
        genderController: genderController,
        phoneController: phoneController,
        emailController: emailController,
        passController: passController);
    return MaterialApp(
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/login_page': (context) => LoginPage(
            emailController: emailController, passController: passController),
        '/forget_password_page': (context) => ForgetPasswordPage(
              emailController: emailController,
              passController: passController,
            ),
        '/registration_page': (context) => register
      },
    );
  }
}
