// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/component/btn_notification.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/track_status/track_status.view.dto.dart';
import 'package:nsw_app/pages/track_status_cancel/cancel.view.dart';
import 'package:nsw_app/pages/track_status_completed/completed.view.dart';
import 'package:nsw_app/pages/track_status_readytorecievedocuments/readytorecievedocument.view.dart';
import 'package:nsw_app/pages/track_status_thedepartmentisworking/thedepartmentisworking.view.dart';
import 'package:nsw_app/pages/track_status_waitingforpetitioner/waitingforpetitioner.view.dart';
import 'package:nsw_app/test_widgets_&_pages/testpage.dart';

class TrackStatusView extends StatefulWidget {
  const TrackStatusView({Key? key, required this.trackstatusDto})
      : super(key: key);

  final TrackstatusDto trackstatusDto;

  @override
  State<TrackStatusView> createState() => _TrackStatusViewState();
}

class _TrackStatusViewState extends State<TrackStatusView> {
  late TrackstatusDto trackstatusDto;

  @override
  void initState() {
    super.initState();
    setState(() {
      trackstatusDto = widget.trackstatusDto;
    });
  }

  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return OutlineInputBorder(
      //Outline border type for TextFeild
      borderRadius: BorderRadius.all(Radius.circular(50)),
      borderSide: BorderSide(
        color: Colors.black38,
        width: 1,
      ),
    );
  }

  OutlineInputBorder myfocusborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        borderSide: BorderSide(
          color: Config.instance.color,
          width: 1,
        ));
  }

  List<String> items = [
    "รอผู้ยื่นคำร้องดำเนินการ (15) ",
    "กรมฯ กำลังดำเนินการ (7)",
    "พร้อมรับเอกสาร (4)",
    "ดำเนินการแล้วเสร็จ (4)",
    "ยกเลิกคำร้อง (4)",
  ];

  List<Widget> pages = [
    WaitingForPetitionerView(),
    TheDepartmentIsWorkingView(),
    ReadyToRecieveDocument(),
    CompletedView(),
    CancelView(),
  ];

  int current = 0;

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
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text(
              "ติดตามสถานะ",
              style: GoogleFonts.prompt(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
            automaticallyImplyLeading: false,
            actions: [
              NotificationButton(),
              SizedBox(
                width: 10,
              ),
            ],
          )
        ],
        body: DefaultTabController(
          length: 5,
          initialIndex: 0,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "เลือกระบบ",
                              style: GoogleFonts.prompt(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 120,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  alignment: Alignment.centerLeft,
                                  shape: StadiumBorder(),
                                  minimumSize: const Size.fromHeight(40),
                                  primary: Config.instance.color,
                                  elevation: 0,
                                ),
                                onPressed: () {
                                  HandleonPressedShowSystem();
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "เลือกระบบงาน",
                                      style: GoogleFonts.prompt(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.change_circle,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 50,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: pages.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      current = index;
                                    });
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    margin: EdgeInsets.all(5),
                                    width: 220,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: current == index
                                            ? Color.fromRGBO(19, 71, 154, 1)
                                            : Color.fromRGBO(19, 71, 154, .5),
                                        borderRadius: current == index
                                            ? BorderRadius.circular(50)
                                            : BorderRadius.circular(50),
                                        border: current == index
                                            ? Border.all(
                                                color: Config.instance.color)
                                            : null),
                                    child: Center(
                                      child: Text(
                                        items[index],
                                        style: GoogleFonts.prompt(
                                          textStyle: TextStyle(
                                            fontSize: Config.instance.fontinfo,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0),
                        child: SizedBox(
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "ค้นหา",
                              labelStyle: Config.instance.f16normal,
                              suffixIcon: Icon(Icons.search),
                              border: myinputborder(),
                              enabledBorder: myinputborder(),
                              focusedBorder: myfocusborder(),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          pages[current],
                        ],
                      ),

                      //       SingleChildScrollView(
                      //         //show card section
                      //         physics: ScrollPhysics(),
                      //         child: ListView.builder(
                      //           physics: NeverScrollableScrollPhysics(),
                      //           scrollDirection: Axis.vertical,
                      //           shrinkWrap: true,
                      //           itemCount: 15,
                      //           itemBuilder: (context, index) {
                      //             return Padding(
                      //               padding:
                      //                   EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                      //               child: Container(
                      //                 decoration: BoxDecoration(
                      //                   borderRadius: BorderRadius.circular(5),
                      //                   color: Colors.white,
                      //                   boxShadow: [
                      //                     BoxShadow(
                      //                       color: Colors.black26,
                      //                       blurRadius: 1,
                      //                       offset: Offset(0, 2), // Shadow position
                      //                     ),
                      //                   ],
                      //                 ),
                      //                 child: Row(
                      //                   children: [
                      //                     Container(
                      //                       decoration: BoxDecoration(
                      //                         borderRadius: BorderRadius.only(
                      //                           topLeft: Radius.circular(5.0),
                      //                           bottomLeft: Radius.circular(5.0),
                      //                         ),
                      //                         color: statuscolor[index],
                      //                       ),
                      //                       height: 100,
                      //                       width: 7,
                      //                     ),
                      //                     SizedBox(
                      //                       height: 90,
                      //                       width: MediaQuery.of(context).size.width -
                      //                           35,
                      //                       child: Padding(
                      //                         padding: const EdgeInsets.fromLTRB(
                      //                             10, 10, 0, 10),
                      //                         child: Row(
                      //                           crossAxisAlignment:
                      //                               CrossAxisAlignment.start,
                      //                           mainAxisAlignment:
                      //                               MainAxisAlignment.spaceBetween,
                      //                           children: [
                      //                             Row(
                      //                               children: [
                      //                                 Image.asset(
                      //                                   "assets/icon_notification_2.png",
                      //                                 ),
                      //                                 SizedBox(
                      //                                   width: 15,
                      //                                 ),
                      //                                 Column(
                      //                                   crossAxisAlignment:
                      //                                       CrossAxisAlignment.start,
                      //                                   mainAxisAlignment:
                      //                                       MainAxisAlignment
                      //                                           .spaceEvenly,
                      //                                   children: [
                      //                                     SizedBox(
                      //                                       width:
                      //                                           MediaQuery.of(context)
                      //                                                   .size
                      //                                                   .width -
                      //                                               130,
                      //                                       child: Row(
                      //                                         mainAxisAlignment:
                      //                                             MainAxisAlignment
                      //                                                 .spaceBetween,
                      //                                         children: [
                      //                                           Text(
                      //                                             topic[index],
                      //                                             style: GoogleFonts
                      //                                                 .prompt(
                      //                                               textStyle:
                      //                                                   TextStyle(
                      //                                                 fontSize: 16,
                      //                                                 fontWeight:
                      //                                                     FontWeight
                      //                                                         .w600,
                      //                                               ),
                      //                                             ),
                      //                                           ),
                      //                                           SizedBox(
                      //                                             height: 30,
                      //                                             width: 120,
                      //                                             child:
                      //                                                 ElevatedButton(
                      //                                               style:
                      //                                                   ElevatedButton
                      //                                                       .styleFrom(
                      //                                                 alignment: Alignment
                      //                                                     .centerLeft,
                      //                                                 shape:
                      //                                                     RoundedRectangleBorder(
                      //                                                   borderRadius:
                      //                                                       BorderRadius
                      //                                                           .circular(
                      //                                                               50),
                      //                                                 ),
                      //                                                 primary: Config
                      //                                                     .instance
                      //                                                     .color,
                      //                                               ),
                      //                                               onPressed:
                      //                                                   () async {
                      //                                                 await launchUrl(
                      //                                                     Uri.parse(
                      //                                                         "https://www.google.com/?&bih=961&biw=1872&hl=en"),
                      //                                                     mode: LaunchMode
                      //                                                         .externalApplication);
                      //                                               },
                      //                                               child: Row(
                      //                                                 mainAxisAlignment:
                      //                                                     MainAxisAlignment
                      //                                                         .spaceBetween,
                      //                                                 children: [
                      //                                                   Container(
                      //                                                     width: 15,
                      //                                                     height: 15,
                      //                                                     decoration:
                      //                                                         BoxDecoration(
                      //                                                       color: Colors
                      //                                                           .white,
                      //                                                       shape: BoxShape
                      //                                                           .circle,
                      //                                                     ),
                      //                                                   ),
                      //                                                   Text(
                      //                                                     "ดาวน์โหลด",
                      //                                                     style: GoogleFonts
                      //                                                         .prompt(
                      //                                                       textStyle: TextStyle(
                      //                                                           fontSize:
                      //                                                               12,
                      //                                                           fontWeight: FontWeight
                      //                                                               .w400,
                      //                                                           color:
                      //                                                               Colors.white),
                      //                                                     ),
                      //                                                   ),
                      //                                                 ],
                      //                                               ),
                      //                                             ),
                      //                                           )
                      //                                         ],
                      //                                       ),
                      //                                     ),
                      //                                     RichText(
                      //                                       text: TextSpan(
                      //                                         children: <TextSpan>[
                      //                                           TextSpan(
                      //                                             text: 'คำร้อง',
                      //                                             style: GoogleFonts
                      //                                                 .prompt(
                      //                                               textStyle:
                      //                                                   TextStyle(
                      //                                                 fontSize: 12,
                      //                                                 fontWeight:
                      //                                                     FontWeight
                      //                                                         .w400,
                      //                                                 color: Color
                      //                                                     .fromRGBO(
                      //                                                         102,
                      //                                                         102,
                      //                                                         102,
                      //                                                         1),
                      //                                               ),
                      //                                             ),
                      //                                           ),
                      //                                           TextSpan(
                      //                                             text:
                      //                                                 ' งานตรวจเรือ',
                      //                                             style: GoogleFonts
                      //                                                 .prompt(
                      //                                               textStyle:
                      //                                                   TextStyle(
                      //                                                 fontSize: 12,
                      //                                                 fontWeight:
                      //                                                     FontWeight
                      //                                                         .w400,
                      //                                                 color: Config
                      //                                                     .instance
                      //                                                     .color,
                      //                                               ),
                      //                                             ),
                      //                                           ),
                      //                                           TextSpan(
                      //                                             text:
                      //                                                 ' ของคุณได้รับการอนุมัติแล้ว',
                      //                                             style: GoogleFonts
                      //                                                 .prompt(
                      //                                               textStyle:
                      //                                                   TextStyle(
                      //                                                 fontSize: 12,
                      //                                                 fontWeight:
                      //                                                     FontWeight
                      //                                                         .w400,
                      //                                                 color: Color
                      //                                                     .fromRGBO(
                      //                                                         102,
                      //                                                         102,
                      //                                                         102,
                      //                                                         1),
                      //                                               ),
                      //                                             ),
                      //                                           ),
                      //                                         ],
                      //                                       ),
                      //                                     ),
                      //                                   ],
                      //                                 ),
                      //                               ],
                      //                             ),
                      //                           ],
                      //                         ),
                      //                       ),
                      //                     ),
                      //                   ],
                      //                 ),
                      //               ),
                      //             );
                      //           },
                      //         ),
                      //       )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  HandleonPressedShowSystem() {
    trackstatusDto.onPressedShowSystem.call();
  }
}
