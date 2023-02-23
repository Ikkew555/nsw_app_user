// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Config {
  Config._myConstructor();

  static Config instance = Config._myConstructor();
  Color color = const Color.fromRGBO(19, 71, 154, 1);
  Color primarycolor = const Color.fromRGBO(7, 20, 124, 1);
  String systemImagePath = "assets/icon_notification_2.png";

  double fonttopic = 12;
  double fontinfo = 16;
  TextStyle f10normalgrey = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 10,
      color: Colors.grey,
    ),
  );
  TextStyle f10normalprimary = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 10,
      color: Color.fromRGBO(7, 20, 124, 1),
    ),
  );
  TextStyle f12normalprimary = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: Color.fromRGBO(7, 20, 124, 1),
    ),
  );
  TextStyle f12boldblack = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 12,
      color: Colors.black,
    ),
  );
  TextStyle f12normalgrey = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: Colors.grey,
    ),
  );
  TextStyle f12semiboldprimary = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 12,
      color: Color.fromRGBO(7, 20, 124, 1),
    ),
  );
  TextStyle f16semiboldprimary = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: Color.fromRGBO(7, 20, 124, 1),
    ),
  );
  TextStyle f16normalprimary = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: Color.fromRGBO(7, 20, 124, 1),
    ),
  );
  TextStyle f16boldprimary = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      color: Color.fromRGBO(7, 20, 124, 1),
    ),
  );
  TextStyle f16semiboldblack = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: Colors.black,
    ),
  );
  TextStyle f16semiboldwhite = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: Colors.white,
    ),
  );
  TextStyle f18normalblack = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 18,
      color: Colors.black,
    ),
  );
  TextStyle f16normalblack = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: Colors.black,
    ),
  );
  TextStyle f14normalgrey = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: Colors.grey,
    ),
  );
  TextStyle f14normalwhite = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: Colors.white,
    ),
  );
  TextStyle f14normalprimary = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: Color.fromRGBO(7, 20, 124, 1),
    ),
  );
  TextStyle f16normal = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
  );
  TextStyle f16normalgrey = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: Colors.grey,
    ),
  );
  TextStyle f16normalwhite = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: Colors.white,
    ),
  );
  TextStyle f18boldblack = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 18,
      color: Colors.black,
    ),
  );
  TextStyle f12semiboldgrey = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 12,
      color: Color.fromRGBO(102, 102, 102, 1),
    ),
  );
  TextStyle f16normalyellow = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: Color.fromRGBO(235, 158, 0, 1),
    ),
  );
  TextStyle f22boldprimary = GoogleFonts.notoSansThai(
    textStyle: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 22,
      color: Color.fromRGBO(7, 20, 124, 1),
    ),
  );
}

class ApiConfig {
  ApiConfig._myConstructor();
  static ApiConfig instance = ApiConfig._myConstructor();
  String apiNswUrl = "https://app-shipreg.md.go.th/auth_citizen/";

  String localUrl = "http://209.15.98.9:8888/api/";
}
