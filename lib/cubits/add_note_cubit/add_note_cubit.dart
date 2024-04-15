import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes/constans.dart';
import 'package:notes/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());


  AddNote(NoteModel note) async {
    
    emit(AddNoteLoading());
    try {
    var notesBox = Hive.box(kNotesBox);
    emit(AddNoteSuccess());
    await notesBox.add(note);
    } catch (e) {
      AddNoteFailure(e.toString());
    } 
  }
}
