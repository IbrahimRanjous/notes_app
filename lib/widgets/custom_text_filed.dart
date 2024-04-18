import 'package:flutter/material.dart';
import 'package:notes/constans.dart';

class CustomTextField extends StatelessWidget {
   const CustomTextField({super.key, required this.hint, this.maxlines = 1, this.onSaved, this.onChanged});

  final String hint;
  final int maxlines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty ?? true)
        {
          return "Field is required";
        }
        else{
          return null;
        }
      },
      autocorrect: true,
      cursorColor: kPrimaryColor,
      maxLines: maxlines,
      decoration: InputDecoration(
        hintText: hint,
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
