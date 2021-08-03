import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyPadding extends StatelessWidget {
  final child;
  const BodyPadding({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30,
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
      color: Color.fromRGBO(140, 138, 152, 0.25),
    );
  }
}

const whiteBoxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(4)));


