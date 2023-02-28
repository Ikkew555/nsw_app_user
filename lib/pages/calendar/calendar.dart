// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nsw_app/component/bottom_navigation_bar_profilepage.dart';
import 'package:nsw_app/pages/calendar/calendar.view.dart';
import 'package:nsw_app/pages/calendar/calendar.view.dto.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  late CalendarDto calendarDto;
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
    logger.d("message from Calendar");
    calendarDto = CalendarDto();
    Future.delayed(Duration.zero, () {
      setState(() {
        // homeDto.helloText = AppLocalizations.of(context)!.hello;
        // homeDto.prefixText = AppLocalizations.of(context)!.gender;
        // homeDto.menuWaitText =
        //     AppLocalizations.of(context)!.waitingforpetitionerMenu;
        // homeDto.menuWorkingText =
        //     AppLocalizations.of(context)!.thedepartmentisworking;
        // homeDto.menuDocumentText =
        //     AppLocalizations.of(context)!.readytorecievedocuments;
        // homeDto.appointmentText = AppLocalizations.of(context)!.appointmentText;
        // homeDto.allAppointmentText =
        //     AppLocalizations.of(context)!.allappointmentText;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return CalendarView(
      calendarDto: calendarDto,
    );
  }

  _HandleonPressedProfile() async {
    await PersistentNavBarNavigator.pushNewScreen(context,
        screen: BottomNavBarProfile(), withNavBar: false);
  }
}
