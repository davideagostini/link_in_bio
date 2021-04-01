import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

const textColor = Color(0xFF000028);

TextStyle normalText({
  Color color,
  double fontSize = 16.0,
  FontWeight fontWeight = FontWeight.w300,
  double letterSpacing = -0.9,
  double height
}) =>
    GoogleFonts.notoSans(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        height: height
    );