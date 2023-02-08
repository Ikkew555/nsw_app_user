// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/track_status/widgets/system_list.dart';
import 'package:nsw_app/pages/track_status_thedepartmentisworking/thedepartmentisworking.view.dart';
import 'package:nsw_app/pages/track_status_thedepartmentisworking/thedepartmentisworking.view.dto.dart';

class TheDepartmentIsWorking extends StatefulWidget {
  const TheDepartmentIsWorking({Key? key}) : super(key: key);

  @override
  State<TheDepartmentIsWorking> createState() => _TheDepartmentIsWorkingState();
}

class _TheDepartmentIsWorkingState extends State<TheDepartmentIsWorking> {
  late TheDepartmentIsWorkingDto theDepartmentIsWorkingDto;
  String titleText = "ติดตามสถานะ";
  String selectSystemText = "เลือกระบบ";
  String selectedSystemText = "เลือกระบบงาน";
  String searchText = "ค้นหา";

  @override
  void initState() {
    super.initState();
    theDepartmentIsWorkingDto = TheDepartmentIsWorkingDto(
      onPressedShowSystem: _HandleonPressedShowSystem,
      titleText: titleText,
      selectSystemText: selectSystemText,
      selectedSystemText: selectedSystemText,
      searchText: searchText,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TheDepartmentIsWorkingView(
      theDepartmentIsWorkingDto: theDepartmentIsWorkingDto,
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
