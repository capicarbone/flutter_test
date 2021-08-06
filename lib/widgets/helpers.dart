import 'package:appevolve_test/adaptive.dart';
import 'package:appevolve_test/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyPadding extends StatelessWidget {
  final child;
  const BodyPadding({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: (isDesktopDisplay(context)) ? 30 : 16,
      vertical: 20),
      child: child,
    );
  }
}

class H3 extends StatelessWidget {
  final text;
  const H3({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.manrope(fontSize: 28,  fontWeight: FontWeight.w700),);
  }
}

class SectionDivider extends StatelessWidget {
  const SectionDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: AEColors.mediumGray.withOpacity(0.25),
    );
  }
}

const whiteBoxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(4)));

const greyBoxDecoration = BoxDecoration(
    color: Color.fromRGBO(248, 248, 249, 1),
    borderRadius: BorderRadius.all(Radius.circular(4)));


