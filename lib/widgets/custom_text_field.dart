import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, this.onChange, this.maxLines = 1});
  final String hintText;
  final int maxLines;
  final Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data!.isEmpty) {
          return 'This field is required';
        }
        return null;
      },
      maxLines: maxLines,
      onChanged: onChange,
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
