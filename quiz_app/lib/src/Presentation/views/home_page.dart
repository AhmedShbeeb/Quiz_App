import 'package:flutter/material.dart';
import 'package:quiz_app/register.dart';
import 'package:quiz_app/src/Presentation/views/registration_page.dart';
import 'package:quiz_app/src/Presentation/widgets/custom_button.dart';
import 'package:quiz_app/src/Presentation/views/main.dart';
import 'package:quiz_app/src/Presentation/views/login_page.dart';
import 'package:quiz_app/src/Presentation/views/registration_page.dart';
import 'package:quiz_app/src/Presentation/views/forget_password_page.dart';
import 'package:quiz_app/register.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('HomePage')),
      ),
      body: Column(
        children: [
          CustomButton(
              label: 'RegistraionPage',
              onPressed: () {
                Navigator.pushNamed(context, '/registration_page');
              },
              icon: Icons.settings),
          CustomButton(
              label: 'LoginPage',
              onPressed: () {
                Navigator.pushNamed(context, '/login_page');
              },
              icon: Icons.settings),
          CustomButton(
              label: 'ForgetPassword',
              onPressed: () {
                Register.pass = '';
                Navigator.pushNamed(context, '/forget_password_page');
              },
              icon: Icons.settings),
        ],
      ),
    );
  }
}
