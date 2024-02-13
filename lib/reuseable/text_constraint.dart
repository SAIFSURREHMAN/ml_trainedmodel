import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PText extends StatelessWidget {
  const PText(this.text, {this.fontSize, this.color, this.weight, Key? key})
      : super(key: key);
  final String text;
  final double? fontSize;
  final FontWeight? weight;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        color: color ?? const Color.fromARGB(255, 239, 241, 241),
        fontSize: fontSize ?? 14,
        fontWeight: weight ?? FontWeight.normal,
      ),
    );
  }
}

class EXHText extends StatelessWidget {
  const EXHText(this.text,
      {this.fontSize,
      this.color,
      this.weight,
      this.ml,
      this.ls,
      this.ws,
      Key? key})
      : super(key: key);
  final String text;
  final double? ls;
  final double? ws;
  final double? ml;
  final double? fontSize;
  final FontWeight? weight;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: GoogleFonts.poppins(
        color: color ?? const Color.fromARGB(255, 3, 222, 14),
        fontSize: fontSize ?? 30,
        fontWeight: weight ?? FontWeight.bold,
        wordSpacing: ws ?? 1,
        letterSpacing: ls ?? 1,
      ),
    );
  }
}
