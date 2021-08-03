import 'package:appevolve_test/widgets/helpers.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final bool isDropdown;
  final bool highlighted;
  const CustomButton(
      {Key? key,
      required this.text,
      this.isDropdown = false,
      this.highlighted = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: whiteBoxDecoration,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: (isDropdown) ? MainAxisAlignment.spaceBetween: MainAxisAlignment.center,
        children: [
          Row(children: [
            Icon(Icons.print),
            SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600,
                  color: highlighted ? Theme.of(context).accentColor : Color.fromRGBO(140, 138, 152, 1)),
            ),

          ],),
          if (isDropdown)
          Row(children: [
            SizedBox(width: 8,),
            Icon(Icons.keyboard_arrow_down_outlined)
          ],)

        ],
      ),
    );
  }
}
