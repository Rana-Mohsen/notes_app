import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/note_list_view.dart';

import 'custom_app_bar.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 50,),
            CustomAppBar(
              icon: Icons.search,
              title: 'Notes',
            ),
            Expanded(child: NoteListView())
          ],
        ),
      );
  }
}