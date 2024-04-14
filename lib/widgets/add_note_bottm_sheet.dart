import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 20,),

          CustomTextField(hint: 'title :',),

          SizedBox(height: 16,),

          CustomTextField(hint: 'content :',
          maxlines: 5,
          ),
        ],
      ),
    );
  }
}