import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/cubits/cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/display_note_view.dart';
import 'package:notes/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;
  // GestureDetector(
  // onTap: () {
  //   Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //           builder: (context) => DisplayNoteView(note: note)));
  // },
  //   child:
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24,
        bottom: 24,
        left: 16,
      ),
      decoration: BoxDecoration(
        color: Color(note.color),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DisplayNoteView(note: note)));
            },
            onLongPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EditNoteView(
                            note: note,
                          )));
            },
            title: Text(
              note.title,
              maxLines: 2,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 26,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 12),
              child: Text(
                note.subtitle,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 18,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text(
                              'Are you sure you want to delete this note ?'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                note.delete();
                                BlocProvider.of<NotesCubit>(context)
                                    .fetchAllNotes();
                                Navigator.pop(context);
                              },
                              child: const Text(
                                "Delete",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                "Cancel",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ));
              },
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              note.date,
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
