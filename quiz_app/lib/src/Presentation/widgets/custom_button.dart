import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:quiz_app/src/utils/constants/color.dart';

/// This widget is used to create a big button that contains a label with an icon besides it
/// and an onPressed function
class CustomButton extends StatelessWidget {
  late String label;
  late void Function() onPressed;
  final IconData icon;

  CustomButton(
      {super.key,
      required this.label,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Icon(
                icon,
                color: Colors.white,
                size: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
