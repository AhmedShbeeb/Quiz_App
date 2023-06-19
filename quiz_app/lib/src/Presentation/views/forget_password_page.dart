import 'package:flutter/material.dart';
import 'package:quiz_app/register.dart';
import 'package:quiz_app/src/Presentation/widgets/text_model.dart';
import 'package:quiz_app/src/Presentation/widgets/custom_button.dart';

class ForgetPasswordPage extends StatefulWidget {
  ForgetPasswordPage(
      {super.key, required this.emailController, required this.passController});

  var emailController = TextEditingController();
  var passController = TextEditingController();

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forget My Password'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextModel(controller: widget.emailController, text: 'Email'),
          TextModel.pass(
              controller: widget.passController,
              text: 'New Password',
              cond: true),
          CustomButton(
              label: 'submit',
              onPressed: () {
                Register.pass = widget.passController.text;
              },
              icon: Icons.subject),
        ],
      ),
    );
  }
}
