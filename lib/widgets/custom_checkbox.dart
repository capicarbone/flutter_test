
import 'package:appevolve_test/a_e_icons_icons.dart';
import 'package:appevolve_test/colors.dart';
import 'package:appevolve_test/widgets/helpers.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  final bool checked;
  const CustomCheckbox({Key? key, this.checked = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      child: checked ? Center(child: Icon(AEIcons.checked, color: Colors.white, size: 14,),) : null,
      decoration: BoxDecoration(
          color: checked ? AEColors.turquoise : AEColors.lighterGray,
          borderRadius: BorderRadius.all(Radius.circular(4))),
    );
  }
}
