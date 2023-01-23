// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/config.dart';
import 'package:url_launcher/url_launcher.dart';

class TestPage5 extends StatefulWidget {
  const TestPage5({Key? key}) : super(key: key);

  @override
  State<TestPage5> createState() => _TestPage5State();
}

class _TestPage5State extends State<TestPage5> {
  List<String> topic = [
    "คำร้องถูกยกเลิก",
    "คำร้องถูกยกเลิก",
    "คำร้องถูกยกเลิก",
    "คำร้องถูกยกเลิก",
  ];

  List<Color> statuscolor = [
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          //show card section
          physics: ScrollPhysics(),
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: topic.length,
            itemBuilder: (context, index) {
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
                          color: statuscolor[index],
                        ),
                        height: 100,
                        width: 7,
                      ),
                      SizedBox(
                        height: 90,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                130,
                                        child: Text(
                                          "คำร้องถูกยกเลิก",
                                          style: GoogleFonts.prompt(
                                            textStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
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
                                                  color: Color.fromRGBO(
                                                      102, 102, 102, 1),
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
                                              text: ' ของคุณถูกยกเลิก',
                                              style: GoogleFonts.prompt(
                                                textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromRGBO(
                                                      102, 102, 102, 1),
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
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
