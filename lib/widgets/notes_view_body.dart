import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/note_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),

            CustomAppBar(title: 'Notes', icon: Icons.search,),

            SizedBox(
              height: 30,
            ),
            
            NotesListView(),
          ],
        ),
      ),
    );
  }
}

