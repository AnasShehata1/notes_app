import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.icon, this.onTap, required this.title});
  final String title;
  final Icon icon;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28, color: Colors.white),
        ),
        const Spacer(),
        CustomIcon(
          icon: icon,
          onTap: onTap,
        )
      ],
    );
  }
}
