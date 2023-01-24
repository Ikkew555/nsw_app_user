// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nsw_app/pages/resetpin_password/resetpinPassword.dart';
import 'package:nsw_app/pages/resetpin_password/resetpinPassword.view.dart';
import 'package:nsw_app/pages/resetpin_username/resetpinUsername.view.dto.dart';
import 'package:nsw_app/pages/resetpin_username/resetpinUsername.view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _buildTheme(),
      home: ResetPinUsername(),
    );
  }
}

ThemeData _buildTheme() {
  final base = ThemeData.light();
  return base.copyWith(
      primaryIconTheme: base.iconTheme.copyWith(color: Colors.black));
}

class ResetPinUsername extends StatefulWidget {
  const ResetPinUsername({Key? key}) : super(key: key);

  @override
  State<ResetPinUsername> createState() => _ResetPinUsernameState();
}

class _ResetPinUsernameState extends State<ResetPinUsername> {
  late ResetPinUsernameDto resetPinUsernameDto;

  String imagePathResetPin = "assets/resetpin.png";
  String imagePathResetPinBGtop = "assets/top_reset_pin.png";
  String imagePathResetPinBGbottom = "assets/bottom_reset_pin.png";
  String topicText = "ตั้งค่ารหัสความปลอดภัย (PIN CODE) ใหม่";
  String usernameText = "กรุณากรอกชื่อผู้ใช้งานของท่าน";

  @override
  void initState() {
    super.initState();
    resetPinUsernameDto = ResetPinUsernameDto(
      imagePathResetPin: imagePathResetPin,
      imagePathResetPinBGbottom: imagePathResetPinBGbottom,
      imagePathResetPinBGtop: imagePathResetPinBGtop,
      topicText: topicText,
      usernameText: usernameText,
      onPressedPassword: _HandleonPressedPassword,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResetPinUsernameView(
      resetPinUsernameDto: resetPinUsernameDto,
    );
  }

  _HandleonPressedPassword() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResetPinPassword(),
      ),
    );
  }
}
