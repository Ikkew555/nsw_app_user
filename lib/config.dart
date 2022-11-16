import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Config {
  Config._myConstructor();

  static Config instance = Config._myConstructor();

  Color color = const Color.fromRGBO(19, 71, 154, 1);
  double fonttopic = 12;
  double fontinfo = 16;
  TextStyle f16semiboldblack = GoogleFonts.prompt(
    textStyle: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: Colors.black,
    ),
  );
  TextStyle f16semiboldwhite = GoogleFonts.prompt(
    textStyle: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: Colors.white,
    ),
  );
}
