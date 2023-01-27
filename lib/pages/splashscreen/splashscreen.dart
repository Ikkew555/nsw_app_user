import 'package:flutter/material.dart';
import 'package:nsw_app/pages/login/login.dart';
import 'package:nsw_app/pages/splashscreen/splashscreen.view.dart';
import 'package:nsw_app/pages/splashscreen/splashscreen.view.dto.dart';
import 'package:url_launcher/url_launcher.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SplashScreenDto splashScreenDto;
  String imagePathWelcomeWeb = "assets/web_nsw1.png";
  String imagePathEservice = "assets/web_nsw2.png";
  String imagePathProfile = "assets/profile_img.png";
  String imagePathMenuWait = "assets/circle_menu1.png";
  String imagePathMenuWorking = "assets/circle_menu2.png";
  String imagePathMenuDocument = "assets/circle_menu3.png";
  String registerText = "ลงทะเบียน";
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
    splashScreenDto = SplashScreenDto(
        onPressedRegister: _HandleonPressedRegister,
        onPressedLogin: _HandleonPressedLogin,
        registerText: registerText);
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
