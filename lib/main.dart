import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/constans.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/simple_bloc_observer.dart';
import 'package:notes/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();

  // to help me see the states in debugging
  Bloc.observer = SimpleBlocObserver();

  // Warning !! : registerAdapter should be before openBox  //
  Hive.registerAdapter(NoteModelAdapter());

  /*
   Waring !! : here I specified the box type "NoteModel" to solve 
   the problem "the box ... is already open and of type Box<dynamic>"
   and I should also specify in cubit folder that have the logic 
  */
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
        // scaffoldBackgroundColor: Colors.black,
      ),
      home: const NotesView(),
    );
  }
}
