import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_views_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      body: const NotesViewsBody(),
    );
  }
}
