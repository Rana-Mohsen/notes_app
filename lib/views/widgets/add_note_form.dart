import 'package:flutter/material.dart';

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
  String? title, suptitle;
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
            suptitle = value;
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
