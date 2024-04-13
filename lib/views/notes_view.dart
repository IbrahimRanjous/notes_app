import 'package:flutter/material.dart';
import 'package:notes/widgets/add_note_bottm_sheet.dart';
import 'package:notes/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[400],
        onPressed: (){
          showModalBottomSheet(
            useSafeArea: true,
            context: context, builder: (context){
              return const AddNoteBottomSheet();
            });
        },
        child: const Icon(Icons.add,color: Colors.red,),
      ),

      body: const NotesViewBody(),
    );
  }
}
