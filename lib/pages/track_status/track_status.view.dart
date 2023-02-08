// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:nsw_app/pages/notification/widgets/btn_notification.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/track_status/track_status.view.dto.dart';
import 'package:nsw_app/pages/track_status_all/track_status_all.dart';
import 'package:nsw_app/pages/track_status_cancel/cancel.dart';
import 'package:nsw_app/pages/track_status_cancel/cancel.view.dart';
import 'package:nsw_app/pages/track_status_completed/completed.dart';
import 'package:nsw_app/pages/track_status_completed/completed.view.dart';
import 'package:nsw_app/pages/track_status_readytorecievedocuments/readytorecievedocument.dart';
import 'package:nsw_app/pages/track_status_readytorecievedocuments/readytorecievedocument.view.dart';
import 'package:nsw_app/pages/track_status_thedepartmentisworking/thedepartmentisworking.dart';
import 'package:nsw_app/pages/track_status_thedepartmentisworking/thedepartmentisworking.view.dart';
import 'package:nsw_app/pages/track_status_waitingforpetitioner/waitingforpetitioner.dart';
import 'package:nsw_app/service/thedepartmentisworking.data.dart';
import 'package:nsw_app/service/trackstatus.data.dart';
import 'package:nsw_app/service/waitingforpetitioner.data.dart';

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

  late List<String> status = [
    "แสดงทั้งหมด (${trackstatusDto.status_number_all})",
    "รอผู้ยื่นคำร้องดำเนินการ (${trackstatusDto.status_number_waiting})",
    "กรมฯ กำลังดำเนินการ (${trackstatusDto.status_number_working})",
    "พร้อมรับเอกสาร (${trackstatusDto.status_number_ready})",
    "ดำเนินการแล้วเสร็จ (${trackstatusDto.status_number_completed})",
    "ยกเลิกคำร้อง (${trackstatusDto.status_number_cancel})",
  ];

  List<Widget> pages = [
    TrackStatusAll(),
    WaitingForPetitioner(),
    TheDepartmentIsWorking(),
    ReadyToRecieveDocument(),
    Completed(),
    Cancel(),
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          trackstatusDto.titleText,
          style: Config.instance.f18boldblack,
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
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 6,
        initialIndex: 0,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          trackstatusDto.selectSystemText,
                          style: Config.instance.f18boldblack,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 120,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              alignment: Alignment.centerLeft,
                              backgroundColor: Config.instance.color,
                              shape: StadiumBorder(),
                              minimumSize: const Size.fromHeight(40),
                              elevation: 0,
                            ),
                            onPressed: () {
                              HandleonPressedShowSystem();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  trackstatusDto.selectedSystemText,
                                  style: Config.instance.f16normalwhite,
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
                                      ? Border.all(color: Config.instance.color)
                                      : null,
                                ),
                                child: Center(
                                  child: Text(status[index],
                                      style: Config.instance.f16normalwhite),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: pages[current],
            ),
          ],
        ),
      ),
    );
  }

  HandleonPressedShowSystem() {
    trackstatusDto.onPressedShowSystem.call();
  }
}
