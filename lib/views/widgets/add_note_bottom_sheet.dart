import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        SizedBox(
          height: 70,
        ),
        CustomTextField(
          hintText: 'Title',
        ),
        SizedBox(
          height: 20,
        ),
        CustomTextField(
          hintText: 'Note content',
          maxLines: 5,
        )
      ]),
    );
  }
}
