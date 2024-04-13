import 'package:flutter/material.dart';
import 'package:notes/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, Index) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: NoteItem(),
        ),
      ),
    );
  }
}
