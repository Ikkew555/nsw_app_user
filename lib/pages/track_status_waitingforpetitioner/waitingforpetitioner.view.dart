// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/config.dart';
import 'package:url_launcher/url_launcher.dart';

class WaitingForPetitionerView extends StatefulWidget {
  const WaitingForPetitionerView({Key? key}) : super(key: key);

  @override
  State<WaitingForPetitionerView> createState() =>
      _WaitingForPetitionerViewState();
}

class _WaitingForPetitionerViewState extends State<WaitingForPetitionerView> {
  List<String> topic = [
    "คำร้อง A",
    "คำร้อง B",
    "คำร้อง C",
    "คำร้อง A",
    "คำร้อง A",
    "คำร้อง A",
    "คำร้อง C",
    "คำร้อง C",
    "คำร้อง B",
    "คำร้อง A",
    "คำร้อง C",
    "คำร้อง A",
    "คำร้อง B",
    "คำร้อง C",
    "คำร้อง C",
  ];

  List<Color> statuscolor = [
    Config.instance.color,
    Colors.yellow,
    Colors.green,
    Colors.greenAccent,
    Colors.red,
    Colors.redAccent,
    Config.instance.color,
    Colors.yellow,
    Colors.green,
    Colors.greenAccent,
    Colors.red,
    Colors.redAccent,
    Colors.greenAccent,
    Colors.red,
    Colors.redAccent,
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
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              topic[index],
                                              style: GoogleFonts.prompt(
                                                textStyle: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            // SizedBox(
                                            //   height: 30,
                                            //   width: 120,
                                            //   child: ElevatedButton(
                                            //     style: ElevatedButton.styleFrom(
                                            //       alignment:
                                            //           Alignment.centerLeft,
                                            //       shape: RoundedRectangleBorder(
                                            //         borderRadius:
                                            //             BorderRadius.circular(
                                            //                 50),
                                            //       ),
                                            //       primary:
                                            //           Config.instance.color,
                                            //     ),
                                            //     onPressed: () async {
                                            //       await launchUrl(
                                            //           Uri.parse(
                                            //               "https://www.google.com/?&bih=961&biw=1872&hl=en"),
                                            //           mode: LaunchMode
                                            //               .externalApplication);
                                            //     },
                                            //     child: Row(
                                            //       mainAxisAlignment:
                                            //           MainAxisAlignment
                                            //               .spaceBetween,
                                            //       children: [
                                            //         Container(
                                            //           width: 15,
                                            //           height: 15,
                                            //           decoration: BoxDecoration(
                                            //             color: Colors.white,
                                            //             shape: BoxShape.circle,
                                            //           ),
                                            //         ),
                                            //         Text(
                                            //           "ดาวน์โหลด",
                                            //           style: GoogleFonts.prompt(
                                            //             textStyle: TextStyle(
                                            //                 fontSize: 12,
                                            //                 fontWeight:
                                            //                     FontWeight.w400,
                                            //                 color:
                                            //                     Colors.white),
                                            //           ),
                                            //         ),
                                            //       ],
                                            //     ),
                                            //   ),
                                            // ),
                                          ],
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
                                              text:
                                                  ' ของคุณได้รับการอนุมัติแล้ว',
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
