import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

import 'package:notes_app/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: const [
          SizedBox(height: 15),
          CustomAppBar(),
          SizedBox(height: 20),

          Expanded(child: NotesListView())

        ],
      ),
    );
  }
}

