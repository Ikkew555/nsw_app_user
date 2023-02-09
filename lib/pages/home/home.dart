// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nsw_app/component/bottom_navigation_bar.dart';
import 'package:nsw_app/pages/calendar/calendarpage.dart';
import 'package:nsw_app/pages/home/home.view.dart';
import 'package:nsw_app/pages/home/home.view.dto.dart';
import 'package:nsw_app/pages/track_status/track_status.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
  late String helloText = "";
  late String prefixText = "";
  late String menuWaitText = "";
  late String menuWorkingText = "";
  late String menuDocumentText = "";
  late String appointmentText = "";
  late String allAppointmentText = "";

  @override
  void initState() {
    super.initState();
    Logger logger = Logger();
    logger.d("message from Home");
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
    Future.delayed(Duration.zero, () {
      setState(() {
        homeDto.helloText = AppLocalizations.of(context)!.hello;
        homeDto.prefixText = AppLocalizations.of(context)!.gender;
        homeDto.menuWaitText =
            AppLocalizations.of(context)!.waitingforpetitionerMenu;
        homeDto.menuWorkingText =
            AppLocalizations.of(context)!.thedepartmentisworking;
        homeDto.menuDocumentText =
            AppLocalizations.of(context)!.readytorecievedocuments;
        homeDto.appointmentText = AppLocalizations.of(context)!.appointmentText;
        homeDto.allAppointmentText =
            AppLocalizations.of(context)!.allappointmentText;
      });
    });
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
        builder: (context) => const BottomNavBar(),
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
        builder: (context) => const TrackStatus(),
      ),
    );
  }

  _HandleonPressedShortcutReadyToReceiveDocuments() async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const TrackStatus(),
      ),
    );
  }

  _HandleonPressedShortcutInProgress() async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const TrackStatus(),
      ),
    );
  }
}
