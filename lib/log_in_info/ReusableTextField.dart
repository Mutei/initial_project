import 'package:flutter/material.dart';

class ReusedTextField extends StatelessWidget {
  final String hintTexts;
  final String labelTexts;
  final bool obsText;

  const ReusedTextField({
    Key? key,
    required this.hintTexts,
    required this.labelTexts,
    required this.obsText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsText,
      style: TextStyle(color: Colors.white), // Set the text color
      decoration: InputDecoration(
        hintText: hintTexts,
        labelText: labelTexts,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        hintStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}
