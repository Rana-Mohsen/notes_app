import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/note_item.dart';

import 'custom_app_bar.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 38,),
            CustomAppBar(),
            NoteItem()
          ],
        ),
      );
  }
}