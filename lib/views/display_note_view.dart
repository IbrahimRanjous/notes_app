import 'package:flutter/material.dart';
import 'package:notes/models/note_model.dart';

class DisplayNoteView extends StatelessWidget {
  const DisplayNoteView({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(note.color),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  note.title,
                  style: const TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              height: 18,
              color: Colors.white,
              thickness: 5,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                note.subtitle,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
