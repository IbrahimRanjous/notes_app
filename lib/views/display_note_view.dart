import 'package:flutter/material.dart';
import 'package:notes/models/note_model.dart';

class DisplayNoteView extends StatelessWidget {
  const DisplayNoteView({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            child: Text(
              note.title,
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
          const Divider(
            height: 20,
            color: Colors.white,
            thickness: 5,
          ),
          Container(
            child: Text(
              note.subtitle,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
