
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});
  final bool isSelected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 27,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 25,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 25,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xff588B8B),
    Color(0xffFFD5C2),
    Color(0xffF28F3B),
    Color(0xffC8553D),
    Color(0xffD6A2AD),
    Color(0xffC3B59F),
    Color(0xffA0AF84),
    Color(0xff668F80),
    Color(0xff4A6670),
    Color(0xff4C5F6B),
    Color(0xff54C6EB),
    Color(0xff06D6A0),
    Color(0xffC179B9),
    Color(0xffEF476F),
    Color(0xffCC2936),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: ColorItem(
                  isSelected: currentIndex == index,
                  color: colors[index],
                )),
          );
        },
      ),
    );
  }
}
