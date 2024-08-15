import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 40),
          CustomAppBar(title: 'Edit Note', icon: Icon(Icons.check)),
          SizedBox(height: 40),
          CustomTextField(hintText: 'Title'),
          SizedBox(height: 18),
          CustomTextField(hintText: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
