import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return (notes.isEmpty)
            ? const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Enter New Note ',
                      style: TextStyle(color: Colors.blue, fontSize: 24),
                    ),
                    Icon(
                      Icons.arrow_downward,
                      size: 40,
                      color: Colors.red,
                    )
                  ],
                ),
              )
            : Expanded(
                child: ListView.builder(
                  itemCount: notes.length,
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, Index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: NoteItem(
                      note: notes[Index],
                    ),
                  ),
                ),
              );
      },
    );
  }
}
