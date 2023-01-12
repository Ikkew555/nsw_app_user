// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/component/btn_notification.dart';
import 'package:nsw_app/component/track_status_menu.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/track_status/widgets/system_list.dart';
import 'package:url_launcher/url_launcher.dart';

class TrackStatusPage extends StatefulWidget {
  const TrackStatusPage({Key? key}) : super(key: key);

  @override
  State<TrackStatusPage> createState() => _TrackStatusPageState();
}

class _TrackStatusPageState extends State<TrackStatusPage> {
  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return OutlineInputBorder(
        //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(50)),
        borderSide: BorderSide(
          color: Colors.black38,
          width: 1,
        ));
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
    "รอผู้ยื่นคำร้องดำเนินการ (4) ",
    "กรมฯ กำลังดำเนินการ (4)",
    "พร้อมรับเอกสาร (4)",
    "ดำเนินการแล้วเสร็จ (4)",
    "ยกเลิกคำร้อง (4)",
  ];

  List icons = [
    Icons.abc,
    Icons.abc_outlined,
    Icons.abc_rounded,
    Icons.abc_sharp,
    Icons.add_box,
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
                                  showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      contentPadding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      content: SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height -
                                                50,
                                        width:
                                            MediaQuery.of(context).size.width -
                                                50,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: <Widget>[
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Center(
                                                child: Text(
                                                  "งานทะเบียนเรือ",
                                                  style: GoogleFonts.prompt(
                                                    textStyle: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 18,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  SystemBox(
                                                      system_img:
                                                          "assets/system_1.png",
                                                      system_name:
                                                          "งานตรวจเรือ"),
                                                  SystemBox(
                                                      system_img:
                                                          "assets/system_2.png",
                                                      system_name:
                                                          "งานคนประจำเรือ"),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  SystemBox(
                                                      system_img:
                                                          "assets/system_3.png",
                                                      system_name:
                                                          "งานประกาศนียบัตร"),
                                                  SystemBox(
                                                      system_img:
                                                          "assets/system_4.png",
                                                      system_name:
                                                          "งานระบบ\nการชำระค่าธรรมเนียม"),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  SystemBox(
                                                      system_img:
                                                          "assets/system_5.png",
                                                      system_name:
                                                          "งานคดีและการดำเนินคดี"),
                                                  SystemBox(
                                                      system_img:
                                                          "assets/system_6.png",
                                                      system_name:
                                                          "งานคุณภาพสิ่งแวดล้อม"),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  SystemBox(
                                                      system_img:
                                                          "assets/system_7.png",
                                                      system_name:
                                                          "งานสิ่งล่วงล้ำลำแม่น้ำ"),
                                                  SystemBox(
                                                      system_img:
                                                          "assets/system_8.png",
                                                      system_name:
                                                          "งานตรวจการขนส่งทางน้ำ"),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  SystemBox(
                                                      system_img:
                                                          "assets/system_9.png",
                                                      system_name:
                                                          "งานระบบเงินเดือน"),
                                                  SystemBox(
                                                      system_img:
                                                          "assets/system_10.png",
                                                      system_name:
                                                          "งานระบบรับแจ้งปัญหา\nการใช้งานระบบคอมพิวเตอร์"),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  SystemBox(
                                                      system_img:
                                                          "assets/system_11.png",
                                                      system_name:
                                                          "งานจดทะเบียน\nเป็นผู้ประกอบการขนส่งทาง\nทะเลและผู้ประกอบกิจการอู่เรือ"),
                                                  SystemBox(
                                                      system_img:
                                                          "assets/system_12.png",
                                                      system_name:
                                                          "งานจดทะเบียน\nเป็นผู้ประกอบการขนส่ง\nต่อเนื่องหลายรูปแบบ"),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  SystemBox(
                                                      system_img:
                                                          "assets/system_13.png",
                                                      system_name:
                                                          "งานขออนุญาตประกอบ\nกิจการท่าเรือเดินทะเลตาม\nประกาศคณะปฏิวัติฉบับที่ ๕๘"),
                                                  SystemBox(
                                                      system_img:
                                                          "assets/system_14.png",
                                                      system_name:
                                                          "งานสารสนเทศพาณิชยนาวี"),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  SystemBox(
                                                      system_img:
                                                          "assets/system_3.png",
                                                      system_name:
                                                          "งานพัฒนาเว็บไซต์\nของกรมเจ้าท่า"),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
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
                          itemCount: items.length,
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
                        padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0),
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
                      SingleChildScrollView(
                        physics: ScrollPhysics(),
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: 15,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
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
                                      width: MediaQuery.of(context).size.width -
                                          35,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 10, 0, 10),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              130,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            topic[index],
                                                            style: GoogleFonts
                                                                .prompt(
                                                              textStyle:
                                                                  TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 30,
                                                            width: 120,
                                                            child:
                                                                ElevatedButton(
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              50),
                                                                ),
                                                                primary: Config
                                                                    .instance
                                                                    .color,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                await launchUrl(
                                                                    Uri.parse(
                                                                        "https://www.google.com/?&bih=961&biw=1872&hl=en"),
                                                                    mode: LaunchMode
                                                                        .externalApplication);
                                                              },
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Container(
                                                                    width: 15,
                                                                    height: 15,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "ดาวน์โหลด",
                                                                    style: GoogleFonts
                                                                        .prompt(
                                                                      textStyle: TextStyle(
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: 'คำร้อง',
                                                            style: GoogleFonts
                                                                .prompt(
                                                              textStyle:
                                                                  TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Color
                                                                    .fromRGBO(
                                                                        102,
                                                                        102,
                                                                        102,
                                                                        1),
                                                              ),
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' งานตรวจเรือ',
                                                            style: GoogleFonts
                                                                .prompt(
                                                              textStyle:
                                                                  TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Config
                                                                    .instance
                                                                    .color,
                                                              ),
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' ของคุณได้รับการอนุมัติแล้ว',
                                                            style: GoogleFonts
                                                                .prompt(
                                                              textStyle:
                                                                  TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Color
                                                                    .fromRGBO(
                                                                        102,
                                                                        102,
                                                                        102,
                                                                        1),
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
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
