import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nsw_app/component/bottom_navigation_bar.dart';
import 'package:nsw_app/pages/login/login.view.dart';
import 'package:nsw_app/pages/login/login.view.dto.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late LoginDto loginDto;
  String imagePathLogo = "assets/logo_nsw.png";
  String helloText = "สวัสดี";
  String prefixText = " คุณ";
  String menuWaitText = "รอผู้ยื่นคำร้อง";
  String menuWorkingText = "กรมฯ กำลังดำเนินการ";
  String menuDocumentText = "พร้อมรับเอกสาร";
  String appointmentText = "การนัดหมาย";
  String allAppointmentText = "การนัดหมายทั้งหมด";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loginDto = LoginDto(
        onPressedForgotPassword: _HandleonPressedForgotPassword,
        onPressedRegister: _HandleonPressedRegister,
        onPressedLogin: _HandleonPressedLogin,
        imagePathLogo: imagePathLogo);
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
}
