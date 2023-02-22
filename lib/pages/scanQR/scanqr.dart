import 'package:flutter/material.dart';
import 'package:nsw_app/component/bottom_navigation_bar.dart';
import 'package:nsw_app/pages/scanQR/scanQR.view.dart';
import 'package:nsw_app/pages/scanQR/scanqr.view.dto.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:url_launcher/url_launcher.dart';

class ScanQR extends StatefulWidget {
  const ScanQR({Key? key}) : super(key: key);

  @override
  State<ScanQR> createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> {
  late ScanQRDto scanQRDto;
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
    super.initState();
    scanQRDto = ScanQRDto(
      onPressedPop: _HandleonPressedPop,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScanQRView(
      scanQRDto: scanQRDto,
    );
  }

  _HandleonPressedRegister() async {
    await launchUrl(
      Uri.parse(
          "https://elaws.md.go.th/nsw-generator/gen_from_db/my/register.php"),
      mode: LaunchMode.externalApplication,
    );
  }

  _HandleonPressedPop() async {
    PersistentNavBarNavigator.pushNewScreen(
      context,
      screen: BottomNavBar(),
      withNavBar: false,
    );
  }
}
