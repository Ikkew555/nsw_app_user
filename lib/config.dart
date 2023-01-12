// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Config {
  Config._myConstructor();

  static Config instance = Config._myConstructor();

  Color color = const Color.fromRGBO(19, 71, 154, 1);
  Color primarycolor = const Color.fromRGBO(7, 20, 124, 1);

  double fonttopic = 12;
  double fontinfo = 16;

  TextStyle f12semiboldprimary = GoogleFonts.prompt(
    textStyle: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 12,
      color: Color.fromRGBO(7, 20, 124, 1),
    ),
  );
  TextStyle f16semiboldprimary = GoogleFonts.prompt(
    textStyle: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: Color.fromRGBO(7, 20, 124, 1),
    ),
  );
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
  TextStyle f18normalblack = GoogleFonts.prompt(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 18,
      color: Colors.black,
    ),
  );
  TextStyle f16normalblack = GoogleFonts.prompt(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: Colors.black,
    ),
  );
  TextStyle f14normalgrey = GoogleFonts.prompt(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: Colors.grey,
    ),
  );
  TextStyle f16normal = GoogleFonts.prompt(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
  );
  TextStyle f18boldblack = GoogleFonts.prompt(
    textStyle: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 18,
      color: Colors.black,
    ),
  );
  TextStyle f12semiboldgrey = GoogleFonts.prompt(
    textStyle: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 12,
      color: Color.fromRGBO(102, 102, 102, 1),
    ),
  );
}
