
import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String text;
  final Color? color;
  const CustomChip({Key? key, required this.text, this.color = null}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Color selectedColor = (color == null) ? Theme.of(context).accentColor : color!;
    return Container(
      height: 30,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          color: selectedColor.withOpacity(0.25),
          borderRadius: BorderRadius.circular(100)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: selectedColor, fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
