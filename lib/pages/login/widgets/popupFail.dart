// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/login/widgets/btn_forgot.dart';
import 'package:nsw_app/pages/login/widgets/btn_retry.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageDialogFail(),
    );
  }
}

class ImageDialogFail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width * 0.9,
        constraints: const BoxConstraints(
          maxHeight: double.infinity,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/fail.png",
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            SizedBox(height: 20),
            Text("ชื่อบัญชีผู้ใช้หรือรหัสผ่านไม่ถูกต้อง",
                style: Config.instance.f18boldblack),
            SizedBox(
              height: 5,
            ),
            Text(
              "กรณีที่ผู้ใช้งานลืมรหัสผ่าน สามารถกดปุ่ม\nลืมรหัสผ่าน เพื่อรีเซ็ตรหัสผ่านผู้ใช้งาน",
              style: Config.instance.f14normalgrey,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            RetryButton(),
            SizedBox(
              height: 10,
            ),
            ForgotButton(),
          ],
        ),
      ),
    );
  }
}
