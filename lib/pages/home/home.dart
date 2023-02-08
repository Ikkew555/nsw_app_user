import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nsw_app/component/bottom_navigation_bar_profilepage.dart';
import 'package:nsw_app/component/bottom_navigation_bar_trackstatus.dart';
import 'package:nsw_app/pages/calendar/calendarpage.dart';
import 'package:nsw_app/pages/home/home.view.dart';
import 'package:nsw_app/pages/home/home.view.dto.dart';
import 'package:nsw_app/pages/track_status/track_status.view.dart';
import 'package:url_launcher/url_launcher.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Home(),
//     );
//   }
// }

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late HomeDto homeDto;
  String imagePathWelcomeWeb = "assets/web_nsw1.png";
  String imagePathEservice = "assets/web_nsw2.png";
  String imagePathProfile = "assets/profile_img.png";
  String imagePathMenuWait = "assets/circle_menu1.png";
  String imagePathMenuWorking = "assets/circle_menu2.png";
  String imagePathMenuDocument = "assets/circle_menu3.png";
  String helloText = "สวัสดี";
  String prefixText = " คุณ";
  String menuWaitText = "รอผู้ยื่นคำร้อง";
  String menuWorkingText = "กรมฯ กำลังดำเนินการ";
  String menuDocumentText = "พร้อมรับเอกสาร";
  String appointmentText = "การนัดหมาย";
  String allAppointmentText = "การนัดหมายทั้งหมด";

  @override
  void initState() {
    super.initState();
    homeDto = HomeDto(
      onTapWelcomeWeb: _HandleonTapWelcomeWeb,
      imagePathWelcomeWeb: imagePathWelcomeWeb,
      imagePathEservice: imagePathEservice,
      imagePathProfile: imagePathProfile,
      imagePathMenuWait: imagePathMenuWait,
      imagePathMenuWorking: imagePathMenuWorking,
      imagePathMenuDocument: imagePathMenuDocument,
      onTapEservice: _HandleonTapEservice,
      onPressedProfile: _HandleonPressedProfile,
      onPressedCalendar: _HandleonPressedCalendar,
      menuDocumentText: menuDocumentText,
      menuWaitText: menuWaitText,
      menuWorkingText: menuWorkingText,
      helloText: helloText,
      prefixText: prefixText,
      allAppointmentText: allAppointmentText,
      appointmentText: appointmentText,
      onPressedInProgess: _HandleonPressedShortcutInProgress,
      onPressedReadyToReceiveDocuments:
          _HandleonPressedShortcutReadyToReceiveDocuments,
      onPressedWaitingforPetitioner:
          _HandleonPressedShortcutWaitingforPetitioner,
    );
  }

  @override
  Widget build(BuildContext context) {
    return HomeView(
      homeDto: homeDto,
    );
  }

  _HandleonTapWelcomeWeb() async {
    await launchUrl(Uri.parse("https://md.go.th/"),
        mode: LaunchMode.externalApplication);
  }

  _HandleonTapEservice() async {
    await launchUrl(Uri.parse("https://app-shipreg.md.go.th/my/"),
        mode: LaunchMode.externalApplication);
  }

  _HandleonPressedProfile() async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const BottomNavBarProfile(),
      ),
    );
  }

  _HandleonPressedCalendar() async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const CalendarPage(),
      ),
    );
  }

  _HandleonPressedShortcutWaitingforPetitioner() async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const BottomNavBarTrackStatus(),
      ),
    );
  }

  _HandleonPressedShortcutReadyToReceiveDocuments() async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const BottomNavBarTrackStatus(),
      ),
    );
  }

  _HandleonPressedShortcutInProgress() async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const BottomNavBarTrackStatus(),
      ),
    );
  }
}
