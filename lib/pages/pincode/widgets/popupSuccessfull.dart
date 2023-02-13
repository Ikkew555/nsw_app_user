// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 330,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/success.png",
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            SizedBox(height: 20),
            Text(
              "ตั้งรหัสความปลอดภัยเสร็จสิ้น",
              style: GoogleFonts.notoSansThai(
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ),
            Text(
              "กรุณาจำรหัสนี้ไว้เพื่อใช้ในการเข้าสู่ระบบครั้งถัดไป",
              style: GoogleFonts.notoSansThai(
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
