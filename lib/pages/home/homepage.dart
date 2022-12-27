// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/component/bottom_navigation_bar_profilepage.dart';
import 'package:nsw_app/component/menu_meeting_menu.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/component/btn_notification.dart';
import 'package:nsw_app/pages/calendar/calendarpage.dart';
import 'package:nsw_app/pages/profile/profilepage.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 44.0, 10.0, 0),
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            onPrimary: Colors.black,
                            splashFactory: NoSplash.splashFactory,
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                            elevation: 0,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const BottomNavBarProfile(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/profile_img.png",
                                width: 50,
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'สวัสดี',
                                      style: GoogleFonts.prompt(
                                        textStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' คุณ',
                                      style: GoogleFonts.prompt(
                                        textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' \nสมมุติ ทดสอบระบบ',
                                      style: GoogleFonts.prompt(
                                        textStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        NotificationButton(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 20.0),
                    child: Divider(
                      color: Color.fromRGBO(102, 102, 102, 1),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Badge(
                            position: BadgePosition.topEnd(),
                            badgeColor: Color.fromRGBO(255, 195, 0, 1),
                            badgeContent: Text(
                              '10',
                              style: GoogleFonts.prompt(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            child: PhysicalShape(
                              shadowColor: Colors.black,
                              elevation: 2,
                              clipper:
                                  ShapeBorderClipper(shape: CircleBorder()),
                              color: Colors.transparent,
                              child: Image.asset(
                                "assets/circle_menu1.png",
                                width: 60,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "รอผู้ยื่นคำร้อง",
                            style: GoogleFonts.prompt(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(102, 102, 102, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Badge(
                            position: BadgePosition.topEnd(),
                            badgeColor: Color.fromRGBO(255, 195, 0, 1),
                            badgeContent: Text(
                              '10',
                              style: GoogleFonts.prompt(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            child: PhysicalShape(
                              shadowColor: Colors.black,
                              elevation: 2,
                              clipper:
                                  ShapeBorderClipper(shape: CircleBorder()),
                              color: Colors.transparent,
                              child: Image.asset(
                                "assets/circle_menu2.png",
                                width: 60,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "กรมฯ กำลังดำเนินการ",
                            style: GoogleFonts.prompt(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(102, 102, 102, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Badge(
                            position: BadgePosition.topEnd(),
                            badgeColor: Color.fromRGBO(255, 195, 0, 1),
                            badgeContent: Text(
                              '10',
                              style: GoogleFonts.prompt(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            child: PhysicalShape(
                              shadowColor: Colors.black,
                              elevation: 2,
                              clipper:
                                  ShapeBorderClipper(shape: CircleBorder()),
                              color: Colors.transparent,
                              child: Image.asset(
                                "assets/circle_menu3.png",
                                width: 60,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "พร้อมรับเอกสาร",
                            style: GoogleFonts.prompt(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(102, 102, 102, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 15.0),
                    child: Container(
                      constraints: BoxConstraints(
                        maxHeight: double.infinity,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 1,
                            offset: Offset(0, 4), // Shadow position
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () async {
                          await launchUrl(Uri.parse("https://md.go.th/"),
                              mode: LaunchMode.externalApplication);
                        },
                        child: Image.asset(
                          "assets/web_nsw1.png",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                    child: Container(
                      constraints: BoxConstraints(
                        maxHeight: double.infinity,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 1,
                            offset: Offset(0, 4), // Shadow position
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () async {
                          await launchUrl(
                              Uri.parse("https://app-shipreg.md.go.th/my/"),
                              mode: LaunchMode.externalApplication);
                        },
                        child: Image.asset(
                          "assets/web_nsw2.png",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "การนัดหมาย",
                          style: GoogleFonts.prompt(
                            textStyle: TextStyle(
                              fontSize: Config.instance.fontinfo,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(19, 71, 154, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size.fromHeight(40),
                              shape: StadiumBorder(),
                              onPrimary: Colors.white,
                              primary: Color.fromRGBO(19, 71, 154, 1),
                            ),
                            child: Text(
                              "การนัดหมายทั้งหมด",
                              style: GoogleFonts.prompt(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CalendarPage(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MeetingCard(),
                  SizedBox(
                    height: 10,
                  ),
                  MeetingCard(),
                  SizedBox(
                    height: 10,
                  ),
                  MeetingCard(),
                  SizedBox(
                    height: 10,
                  ),
                  MeetingCard(),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
