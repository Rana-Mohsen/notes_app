part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NoteLoading extends NotesState {}

class NoteSuccess extends NotesState {
}
