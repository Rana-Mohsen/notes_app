import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title, supTitle;
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(children: [
        const SizedBox(
          height: 32,
        ),
        CustomTextField(
          onSaved: (value) {
            title = value;
          },
          hintText: 'Title',
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          onSaved: (value) {
            supTitle = value;
          },
          hintText: 'Note content',
          maxLines: 5,
        ),
        const SizedBox(
          height: 16,
        ),
        CustomButton(
          ontap: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
              var noteModel = NoteModel(
                  title: title!,
                  subTitle: supTitle!,
                  data: DateTime.now().toString(),
                  color: Colors.blue.value);
              BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
            } else {
              setState(() {
                autovalidateMode = AutovalidateMode.always;
              });
            }
          },
        ),
        const SizedBox(
          height: 16,
        ),
      ]),
    );
  }
}
