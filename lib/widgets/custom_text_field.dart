import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, this.maxLines = 1, this.onSaved});
  final String hintText;
  final int maxLines;

  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data?.isEmpty ?? true) {
          return 'This field is required';
        }
        return null;
      },
      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintStyle: const TextStyle(color: kPrimaryColor),
        hintText: hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: buildBorder(kPrimaryColor),
        enabledBorder: buildBorder(),
        border: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
