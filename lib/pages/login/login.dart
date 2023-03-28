// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nsw_app/component/bottom_navigation_bar.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/model/user.dart';
import 'package:nsw_app/pages/login/login.view.dart';
import 'package:nsw_app/pages/login/login.view.dto.dart';
import 'package:nsw_app/pages/pincode/pincode.dart';
import 'package:nsw_app/pages/resetpin_username/resetpinUsername.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late LoginDto loginDto;
  Logger logger = Logger();
  String imagePathLogo = "assets/logo_nsw.png";
  String usernameText = "ชื่อผู้ใช้งาน";
  String passwordText = "รหัสผ่าน";
  String rememberUserText = "จดจำบัญชีผู้ใช้";
  String forgetPassText = "ลืมรหัสผ่าน ?";
  String registerText = "ยังไม่มีบัญชีผู้ใช้งาน ?";
  String loginText = "เข้าสู่ระบบ";

  @override
  initState() {
    super.initState();
    loginDto = LoginDto(
      onPressedForgotPassword: _HandleonPressedForgotPassword,
      onPressedRegister: _HandleonPressedRegister,
      onPressedLogin: _HandleonPressedLogin,
      imagePathLogo: imagePathLogo,
      loginValidate: _HandleLoginValidate,
      passwordValidate: _HandlePasswordValidate,
      usernameValidate: _HandleUsernameValidate,
      registerText: registerText,
      onPressedResetPin: _HandleonPressedResetPin,
      onPressedSetPin: _HandleonPressedSetPin,
      forgetPassText: forgetPassText,
      passwordText: passwordText,
      rememberUserText: rememberUserText,
      usernameText: usernameText,
      loginText: loginText,
      onPressedSuccess: _HandleonPressedSuccess,
      prefsPassword: User.instance.prefsPassword,
      prefsUsername: User.instance.prefsUsername,
      missingUserValidate: _HandleMissingValidate,
      noUserValidate: _HandleNotFoundUsername,
      wrongUserValidate: _HandleWrongValidate,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LoginView(
      loginDto: loginDto,
    );
  }

  _HandleonPressedForgotPassword() async {
    await launchUrl(
        Uri.parse(
            "https://elaws.md.go.th/nsw-generator/gen_from_db/my/forgot_password_form.php"),
        mode: LaunchMode.externalApplication);
  }

  _HandleonPressedRegister() async {
    await launchUrl(
        Uri.parse(
            "https://elaws.md.go.th/nsw-generator/gen_from_db/my/register.php"),
        mode: LaunchMode.externalApplication);
  }

  _HandleonPressedLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BottomNavBar(),
      ),
    );
  }

  _HandleonPressedResetPin() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResetPinUsername(),
      ),
    );
  }

  _HandleonPressedSetPin() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Pincode(),
      ),
    );
  }

  _HandleLoginValidate() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(
          'เข้าสู่ระบบล้มเหลว',
          style: Config.instance.f16semiboldprimary,
        ),
        content: Text(
          'โปรดกรอก ชื่อผู้ใช้งาน หรือ รหัสผ่านให้ถูกต้อง เพื่อเข้าสู่ระบบ',
          style: Config.instance.f16normalblack,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'ปิด'),
            child: Text(
              'ปิด',
              style: Config.instance.f16normalprimary,
            ),
          ),
        ],
      ),
    );
  }

  _HandleWrongValidate() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(
          'เข้าสู่ระบบล้มเหลว',
          style: Config.instance.f16semiboldprimary,
        ),
        content: Text(
          'ชื่อผู้ใช้งาน หรือ รหัสผ่านไม่ถูกต้อง',
          style: Config.instance.f16normalblack,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'ปิด'),
            child: Text(
              'ปิด',
              style: Config.instance.f16normalprimary,
            ),
          ),
        ],
      ),
    );
  }

  _HandleMissingValidate() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(
          'เข้าสู่ระบบล้มเหลว',
          style: Config.instance.f16semiboldprimary,
        ),
        content: Text(
          'โปรดกรอกชื่อผู้ใช้งาน หรือ รหัสผ่านให้ครบถ้วน',
          style: Config.instance.f16normalblack,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'ปิด'),
            child: Text(
              'ปิด',
              style: Config.instance.f16normalprimary,
            ),
          ),
        ],
      ),
    );
  }

  _HandleNotFoundUsername() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(
          'เข้าสู่ระบบล้มเหลว',
          style: Config.instance.f16semiboldprimary,
        ),
        content: Text(
          'ไม่พบชื่อผู้ใช้งาน',
          style: Config.instance.f16normalblack,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'ปิด'),
            child: Text(
              'ปิด',
              style: Config.instance.f16normalprimary,
            ),
          ),
        ],
      ),
    );
  }

  _HandleUsernameValidate() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(
          'เข้าสู่ระบบล้มเหลว',
          style: Config.instance.f16semiboldprimary,
        ),
        content: Text(
          'โปรดกรอก ชื่อผู้ใช้งาน เพื่อเข้าสู่ระบบ',
          style: Config.instance.f16normalblack,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'ปิด'),
            child: Text(
              'ปิด',
              style: Config.instance.f16normalprimary,
            ),
          ),
        ],
      ),
    );
  }

  _HandlePasswordValidate() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(
          'เข้าสู่ระบบล้มเหลว',
          style: Config.instance.f16semiboldprimary,
        ),
        content: Text(
          'โปรดกรอก รหัสผ่านให้ถูกต้อง เพื่อเข้าสู่ระบบ',
          style: Config.instance.f16normalblack,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'ปิด'),
            child: Text(
              'ปิด',
              style: Config.instance.f16normalprimary,
            ),
          ),
        ],
      ),
    );
  }

  _HandleonPressedSuccess() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BottomNavBar(),
      ),
    );
  }
}
