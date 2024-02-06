import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        child: SingleChildScrollView(
          child: AddNoteForm(),
        ),
      ),
    );
  }
}

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
