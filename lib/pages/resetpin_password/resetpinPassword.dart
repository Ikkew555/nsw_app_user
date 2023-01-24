// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nsw_app/pages/resetpin_password/resetpinPassword.view.dart';
import 'package:nsw_app/pages/resetpin_password/resetpinPassword.view.dto.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _buildTheme(),
      home: ResetPinPassword(),
    );
  }
}

ThemeData _buildTheme() {
  final base = ThemeData.light();
  return base.copyWith(
      primaryIconTheme: base.iconTheme.copyWith(color: Colors.black));
}

class ResetPinPassword extends StatefulWidget {
  const ResetPinPassword({Key? key}) : super(key: key);

  @override
  State<ResetPinPassword> createState() => _ResetPinPasswordState();
}

class _ResetPinPasswordState extends State<ResetPinPassword> {
  late ResetPinPasswordDto resetPinPasswordDto;

  String imagePathResetPin = "assets/resetpin.png";
  String imagePathResetPinBGtop = "assets/top_reset_pin.png";
  String imagePathResetPinBGbottom = "assets/bottom_reset_pin.png";
  String topicText = "ตั้งค่ารหัสความปลอดภัย (PIN CODE) ใหม่";
  String passwordText = "กรุณากรอกรหัสผ่านของท่าน";

  @override
  void initState() {
    super.initState();
    resetPinPasswordDto = ResetPinPasswordDto(
      imagePathResetPin: imagePathResetPin,
      imagePathResetPinBGbottom: imagePathResetPinBGbottom,
      imagePathResetPinBGtop: imagePathResetPinBGtop,
      topicText: topicText,
      passwordText: passwordText,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResetPinPasswordView(
      resetPinPasswordDto: resetPinPasswordDto,
    );
  }
}
