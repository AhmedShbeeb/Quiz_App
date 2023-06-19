import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  static String email = email;
  static String name = name;
  static String pass = pass;

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final controllerEmail = TextEditingController();
  final controllerName = TextEditingController();
  final controllerPass = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    controllerEmail.dispose();
    controllerName.dispose();
    controllerPass.dispose();
    super.dispose();
  }

  //int id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Register'),
          ),
        ),
        body: Column(
          children: [
            Padding(padding: EdgeInsets.all(100)),
            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: Text('Email:'),
            ),
            Center(
              child: SizedBox(
                width: 200,
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your Email',
                  ),
                  controller: controllerEmail,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(8)),
            Padding(
              padding: const EdgeInsets.only(right: 155),
              child: Text('Name:'),
            ),
            SizedBox(
              width: 200,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter name',
                ),
                controller: controllerName,
              ),
            ),
            Padding(padding: EdgeInsets.all(8)),
            Padding(
              padding: const EdgeInsets.only(right: 133),
              child: Text('Password:'),
            ),
            SizedBox(
              width: 200,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Password',
                ),
                controller: controllerPass,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(right: 22, top: 5),
                  child: ElevatedButton(
                      onPressed: () {
                        Register.email = controllerEmail.text;
                        Register.name = controllerName.text;
                        Register.pass = controllerPass.text;
                      },
                      child: Text('submit')),
                )),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: ElevatedButton(
                      onPressed: () {
                        print(Register.email +
                            " " +
                            Register.name +
                            " " +
                            Register.pass);
                      },
                      child: Text('Login Page')),
                ),
              ],
            )
          ],
        ));
  }
}
