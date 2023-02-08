// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/track_status/widgets/system_list.dart';
import 'package:nsw_app/pages/track_status_readytorecievedocuments/readytorecievedocument.view.dart';
import 'package:nsw_app/pages/track_status_readytorecievedocuments/readytorecievedocument.view.dto.dart';
import 'package:nsw_app/service/trackstatus.data.dart';
import 'package:nsw_app/service/waitingforpetitioner.data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ReadyToRecieveDocument(),
    );
  }
}

class ReadyToRecieveDocument extends StatefulWidget {
  const ReadyToRecieveDocument({Key? key}) : super(key: key);

  @override
  State<ReadyToRecieveDocument> createState() => _ReadyToRecieveDocumentState();
}

class _ReadyToRecieveDocumentState extends State<ReadyToRecieveDocument> {
  late ReadyToRecieveDocumentDto readyToRecieveDocumentDto;
  String titleText = "ติดตามสถานะ";
  String selectSystemText = "เลือกระบบ";
  String selectedSystemText = "เลือกระบบงาน";
  String searchText = "ค้นหา";
  late String status_number_all;
  late String status_number_waiting;
  List<TrackStatusModel> display_list = List.from(items);
  List<WaitingforpetitionerModel> display_list_waiting =
      List.from(items_waiting);

  @override
  void initState() {
    super.initState();
    setState(() {
      status_number_all = display_list.length.toString();
      status_number_waiting = display_list_waiting.length.toString();
      print("status_number_all");
      print(status_number_all);
      print("status_number_waiting");
      print(status_number_waiting);
    });
    readyToRecieveDocumentDto = ReadyToRecieveDocumentDto(
        onPressedShowSystem: _HandleonPressedShowSystem,
        searchText: '',
        selectSystemText: '',
        selectedSystemText: '',
        titleText: '');
  }

  @override
  Widget build(BuildContext context) {
    return ReadyToRecieveDocumentView(
      readyToRecieveDocumentDto: readyToRecieveDocumentDto,
    );
  }

  _HandleonPressedShowSystem() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        contentPadding: EdgeInsets.only(left: 10, right: 10),
        content: SizedBox(
          height: MediaQuery.of(context).size.height - 50,
          width: MediaQuery.of(context).size.width - 50,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text("งานทะเบียนเรือ",
                      style: Config.instance.f18boldblack),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SystemBox(
                        system_img: "assets/system_1.png",
                        system_name: "งานตรวจเรือ"),
                    SystemBox(
                        system_img: "assets/system_2.png",
                        system_name: "งานคนประจำเรือ"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SystemBox(
                        system_img: "assets/system_3.png",
                        system_name: "งานประกาศนียบัตร"),
                    SystemBox(
                        system_img: "assets/system_4.png",
                        system_name: "งานระบบ\nการชำระค่าธรรมเนียม"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SystemBox(
                        system_img: "assets/system_5.png",
                        system_name: "งานคดีและการดำเนินคดี"),
                    SystemBox(
                        system_img: "assets/system_6.png",
                        system_name: "งานคุณภาพสิ่งแวดล้อม"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SystemBox(
                        system_img: "assets/system_7.png",
                        system_name: "งานสิ่งล่วงล้ำลำแม่น้ำ"),
                    SystemBox(
                        system_img: "assets/system_8.png",
                        system_name: "งานตรวจการขนส่งทางน้ำ"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SystemBox(
                        system_img: "assets/system_9.png",
                        system_name: "งานระบบเงินเดือน"),
                    SystemBox(
                        system_img: "assets/system_10.png",
                        system_name:
                            "งานระบบรับแจ้งปัญหา\nการใช้งานระบบคอมพิวเตอร์"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SystemBox(
                        system_img: "assets/system_11.png",
                        system_name:
                            "งานจดทะเบียน\nเป็นผู้ประกอบการขนส่งทาง\nทะเลและผู้ประกอบกิจการอู่เรือ"),
                    SystemBox(
                        system_img: "assets/system_12.png",
                        system_name:
                            "งานจดทะเบียน\nเป็นผู้ประกอบการขนส่ง\nต่อเนื่องหลายรูปแบบ"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SystemBox(
                        system_img: "assets/system_13.png",
                        system_name:
                            "งานขออนุญาตประกอบ\nกิจการท่าเรือเดินทะเลตาม\nประกาศคณะปฏิวัติฉบับที่ ๕๘"),
                    SystemBox(
                        system_img: "assets/system_14.png",
                        system_name: "งานสารสนเทศพาณิชยนาวี"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SystemBox(
                        system_img: "assets/system_3.png",
                        system_name: "งานพัฒนาเว็บไซต์\nของกรมเจ้าท่า"),
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
  }
}
