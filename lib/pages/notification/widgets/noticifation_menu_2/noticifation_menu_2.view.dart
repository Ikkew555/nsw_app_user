// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/component/bottom_navigation_bar_trackstatus.dart';
import 'package:nsw_app/config.dart';

class NotificationCard2 extends StatefulWidget {
  const NotificationCard2({Key? key}) : super(key: key);

  @override
  State<NotificationCard2> createState() => _NotificationCard2State();
}

class _NotificationCard2State extends State<NotificationCard2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 1,
              offset: Offset(0, 2), // Shadow position
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  bottomLeft: Radius.circular(5.0),
                ),
                color: Config.instance.color,
              ),
              height: 75,
              width: 7,
            ),
            SizedBox(
              height: 67,
              width: MediaQuery.of(context).size.width - 35,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/icon_notification_2.png",
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "คำร้องของคุณกำลังถูกตรวจสอบ",
                              style: GoogleFonts.prompt(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'คำร้อง',
                                    style: GoogleFonts.prompt(
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(102, 102, 102, 1),
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' งานตรวจเรือ',
                                    style: GoogleFonts.prompt(
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Config.instance.color,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ของคุณได้รับการอนุมัติแล้ว',
                                    style: GoogleFonts.prompt(
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(102, 102, 102, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      "8 มิ.ย.",
                      style: GoogleFonts.prompt(
                        textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(102, 102, 102, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationCard2HomePage extends StatefulWidget {
  const NotificationCard2HomePage({Key? key}) : super(key: key);

  @override
  State<NotificationCard2HomePage> createState() =>
      _NotificationCard2HomePageState();
}

class _NotificationCard2HomePageState extends State<NotificationCard2HomePage> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        alignment: Alignment.centerLeft,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: const Size.fromHeight(50),
        elevation: 0,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const BottomNavBarTrackStatus(),
          ),
        );
      },
      child: Row(
        children: [
          SizedBox(
            height: 67,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10.0),
                      child: Image.asset(
                        "assets/icon_notification_2.png",
                        width: 47,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "คำร้องของคุณกำลังถูกตรวจสอบ",
                          style: GoogleFonts.prompt(
                            textStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'คำร้อง',
                                style: GoogleFonts.prompt(
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(102, 102, 102, 1),
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: ' งานตรวจเรือ',
                                style: GoogleFonts.prompt(
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Config.instance.color,
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: ' ของคุณได้รับการอนุมัติแล้ว',
                                style: GoogleFonts.prompt(
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(102, 102, 102, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
