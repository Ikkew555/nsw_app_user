// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nsw_app/model/user.dart';
import 'package:nsw_app/pages/login/login.dart';
import 'package:nsw_app/pages/splashscreen/splashscreen.view.dart';
import 'package:nsw_app/pages/splashscreen/splashscreen.view.dto.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SplashScreenDto splashScreenDto;
  String imagePathLogo = "assets/logo_nsw.png";
  String loginText = "เข้าสู่ระบบ";
  String registerText = "ลงทะเบียน";
  Logger logger = Logger();

  @override
  void initState() {
    PrefInfo() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var prefsUsername = prefs.getString('prefsUsername');
      var prefsPassword = prefs.getString('prefsPassword');
      var prefsCode = prefs.getString('prefsCode');
      User.instance.prefsUsername = prefsUsername;
      User.instance.prefsPassword = prefsPassword;
      User.instance.prefsCode = prefsCode;
      logger.d(
        "Remembered Info\n"
        "prefsUsername : ${User.instance.prefsUsername}\n"
        "prefsPassword : ${User.instance.prefsPassword}\n"
        "prefsCode : ${User.instance.prefsCode}",
      );
    }

    super.initState();
    splashScreenDto = SplashScreenDto(
      onPressedRegister: _HandleonPressedRegister,
      onPressedLogin: _HandleonPressedLogin,
      loginText: loginText,
      imagePathLogo: imagePathLogo,
      registerText: registerText,
    );
    PrefInfo();
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      splashScreenDto: splashScreenDto,
    );
  }

  _HandleonPressedRegister() async {
    await launchUrl(
      Uri.parse(
          "https://elaws.md.go.th/nsw-generator/gen_from_db/my/register.php"),
      mode: LaunchMode.externalApplication,
    );
  }

  _HandleonPressedLogin() async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Login(),
      ),
    );
  }
}
