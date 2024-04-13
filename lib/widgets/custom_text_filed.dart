import 'package:flutter/material.dart';
import 'package:notes/constans.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: true,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: TextStyle(color: kPrimaryColor.withOpacity(0.6)),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ??Colors.white),
      );
}
