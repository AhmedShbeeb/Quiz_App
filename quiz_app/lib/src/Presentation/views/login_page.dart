import 'package:flutter/material.dart';
import 'package:quiz_app/src/Presentation/widgets/custom_button.dart';
import 'package:quiz_app/src/Presentation/widgets/text_model.dart';
import 'package:quiz_app/src/Presentation/views/registration_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage(
      {super.key, required this.emailController, required this.passController});

  var emailController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextModel(controller: emailController, text: 'Email'),
            TextModel.pass(controller: passController, text: 'Password',cond: true),
            CustomButton(label: 'submit', onPressed: () {}, icon: Icons.subject)
          ],
        ),
      ),
    );
  }
}
