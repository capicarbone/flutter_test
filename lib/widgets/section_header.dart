
import 'dart:html';

import 'package:appevolve_test/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'helpers.dart';

class _ActionsArea extends StatelessWidget {
  const _ActionsArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(text: "Print", highlighted: true,),
        SizedBox(width: 8,),
        CustomButton(text: "Export", highlighted: true, isDropdown: true,)
      ],
    );
  }
}


class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        H3(text: title),
        _ActionsArea()
      ],
    );
  }
}
