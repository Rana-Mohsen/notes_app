import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_list/notes_cubit.dart';
import 'package:notes_app/views/widgets/note_list_view.dart';

import 'custom_app_bar.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({super.key});

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
   @override
  void initState() {
   BlocProvider.of<NotesCubit>(context).fetchNote();
    super.initState();
  }
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