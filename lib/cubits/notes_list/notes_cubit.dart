import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  
  fetchNote() async{
    var noteBox = Hive.box<NoteModel>(kNoteBox);
    try { // future
      emit(NoteSuccess(noteBox.values.toList()));
    } catch (e) {
      emit(NoteFailure(e.toString()));
    }
  }
}
