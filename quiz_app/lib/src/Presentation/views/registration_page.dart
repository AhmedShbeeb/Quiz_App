import 'package:flutter/material.dart';
import 'package:quiz_app/src/Presentation/widgets/custom_button.dart';
import 'package:quiz_app/src/Presentation/widgets/text_model.dart';
import 'package:quiz_app/src/Presentation/views/main.dart';
import 'package:quiz_app/src/Presentation/views/login_page.dart';
import 'package:quiz_app/src/Presentation/views/forget_password_page.dart';

class RegistraionPage extends StatefulWidget {
  RegistraionPage(
      {super.key,
      required this.nameController,
      required this.genderController,
      required this.phoneController,
      required this.emailController,
      required this.passController});

  static String name = name;
  static String gender = gender;
  static String phone = phone;
  static String email = email;
  static String pass = pass;

  var nameController = TextEditingController();
  var genderController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var passController = TextEditingController();

  @override
  State<RegistraionPage> createState() => _RegistraionPageState();
}

class _RegistraionPageState extends State<RegistraionPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextModel(controller: widget.nameController, text: 'Username'),
              TextModel(controller: widget.genderController, text: 'Gender'),
              TextModel(controller: widget.phoneController, text: 'Phone'),
              TextModel(controller: widget.emailController, text: 'Email'),
              TextModel.pass(
                controller: widget.passController,
                text: 'Password',
                cond: true,
              ),
              CustomButton(
                  onPressed: () {
                    printValue();
                  },
                  label: 'submit',
                  icon: Icons.subject),
            ]),
      ),
    );
  }

  void printValue() {
    print(widget.emailController.text +
        " " +
        widget.nameController.text +
        " " +
        widget.genderController.text +
        " " +
        widget.passController.text +
        " " +
        widget.phoneController.text +
        " ");
  }
}
