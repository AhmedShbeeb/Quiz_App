import 'package:flutter/material.dart';

class TextModel extends StatelessWidget {
  TextModel({super.key, required this.controller, required this.text});
  TextEditingController? controller = TextEditingController();
  String text = '';
  bool cond = false;
  TextModel.pass(
      {super.key,
      required this.controller,
      required this.text,
      required this.cond});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(8)),
          Text(text),
          SizedBox(
            width: 350,
            height: 50,
            child: TextField(
              obscureText: cond,
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'write your ' + text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
