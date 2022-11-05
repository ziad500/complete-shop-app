import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextUtils extends StatelessWidget {
  const TextUtils(
      {super.key,
      required this.text,
      this.textSize = 35,
      this.fontWeight = FontWeight.bold,
      this.color = Colors.white,
      this.textDecoration = TextDecoration.none});
  final String text;
  final double textSize;
  final FontWeight fontWeight;
  final Color color;
  final TextDecoration textDecoration;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.lato(
          textStyle: TextStyle(
              decoration: textDecoration,
              fontSize: textSize,
              color: color,
              fontWeight: fontWeight),
        ));
  }
}
