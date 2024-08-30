import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const EditNoteView();
          }),
        );
      },
      child: Container(
        width: 350,
        height: 200,
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Color(noteModel.color),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(noteModel.title),
              ),
              titleTextStyle:
                  const TextStyle(color: Colors.black, fontSize: 24),
              subtitle: Text(noteModel.subTitle),
              subtitleTextStyle:
                  TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 18),
              trailing: IconButton(
                  onPressed: () {
                    noteModel.delete();
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 28,
                  )),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 12.0, bottom: 12),
              child: Text(
                noteModel.dateTime,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.6), fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
