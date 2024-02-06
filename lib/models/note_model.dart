import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(3)
  final String data;
  @HiveField(4)
  final int color;

  NoteModel(
      {required this.title,
      required this.subTitle,
      required this.data,
      required this.color});
}