import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextField(hintText: 'Title'),
            SizedBox(height: 18),
            CustomTextField(hintText: 'Content', maxLines: 5),
            SizedBox(height: 32),
            CustomButton(text: 'Add'),
            SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}
