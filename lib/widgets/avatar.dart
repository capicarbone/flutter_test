
import 'package:appevolve_test/adaptive.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final isDesktop = isDesktopDisplay(context);
    return Stack(
      children: [

        Container(
            width: isDesktop ? 42 : 24,
            height: isDesktop ? 42 : 24,
            child: Image(image: AssetImage('images/avatar.png'))),
        Positioned(
          child: Container(
            width: isDesktop ? 12 : 7,
            height: isDesktop ? 12 : 7,
            decoration: BoxDecoration(
                color: AEColors.turquoise, borderRadius: BorderRadius.circular(12)),
          ), right: 0, bottom: 0,),
      ],
    );
  }
}