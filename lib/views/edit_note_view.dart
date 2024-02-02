import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

import 'widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
          SizedBox(height: 50,),
          CustomAppBar(icon: Icons.check, title: 'Edit Note'),
          SizedBox(height:32),
          CustomTextField(hintText: 'Title',),
          SizedBox(height:20),
          CustomTextField(hintText: 'Note',maxLines: 5,)
          
           
        ]),
      ),
    );
  }
}