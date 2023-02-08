// รายชื่อในลิส Waitingforpetitioner

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';

class WaitingforpetitionerModel {
  Color? color;
  String? title;
  String? subtitle;
  String? system_image_url;
  String? track_number;

  WaitingforpetitionerModel(
    this.color,
    this.title,
    this.subtitle,
    this.system_image_url,
    this.track_number,
  );
}

List<WaitingforpetitionerModel> items_waiting = [
  WaitingforpetitionerModel(
    Colors.pinkAccent,
    "รอผู้ยื่นคำร้องดำเนินการ",
    "คำร้องชำระเงิน",
    Config.instance.systemImagePath,
    "B124574",
  ),
  WaitingforpetitionerModel(
    Colors.brown,
    "รอผู้ยื่นคำร้องดำเนินการ",
    "คำร้องงานท่า",
    Config.instance.systemImagePath,
    "P154584",
  ),
  WaitingforpetitionerModel(
    Colors.amber,
    "รอผู้ยื่นคำร้องดำเนินการ",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "C207584",
  ),
  WaitingforpetitionerModel(
    Colors.deepOrange,
    "รอผู้ยื่นคำร้องดำเนินการ",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "C214584",
  ),
  WaitingforpetitionerModel(
    Colors.deepPurple,
    "รอผู้ยื่นคำร้องดำเนินการ",
    "คำร้องงานบริการ",
    Config.instance.systemImagePath,
    "S224584",
  ),
  WaitingforpetitionerModel(
    Colors.pinkAccent,
    "รอผู้ยื่นคำร้องดำเนินการ",
    "คำร้องชำระเงิน",
    Config.instance.systemImagePath,
    "B284584",
  ),
  WaitingforpetitionerModel(
    Colors.brown,
    "รอผู้ยื่นคำร้องดำเนินการ",
    "คำร้องงานท่า",
    Config.instance.systemImagePath,
    "P214575",
  ),
  WaitingforpetitionerModel(
    Colors.amber,
    "รอผู้ยื่นคำร้องดำเนินการ",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "P958746",
  ),
  WaitingforpetitionerModel(
    Colors.deepOrange,
    "รอผู้ยื่นคำร้องดำเนินการ",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "P214577",
  ),
  WaitingforpetitionerModel(
    Colors.deepPurple,
    "รอผู้ยื่นคำร้องดำเนินการ",
    "คำร้องงานบริการ",
    Config.instance.systemImagePath,
    "S211545",
  ),
  WaitingforpetitionerModel(
    Colors.pinkAccent,
    "รอผู้ยื่นคำร้องดำเนินการ",
    "คำร้องชำระเงิน",
    Config.instance.systemImagePath,
    "B214255",
  ),
  WaitingforpetitionerModel(
    Colors.brown,
    "รอผู้ยื่นคำร้องดำเนินการ",
    "คำร้องงานท่า",
    Config.instance.systemImagePath,
    "P214565",
  ),
  WaitingforpetitionerModel(
    Colors.amber,
    "รอผู้ยื่นคำร้องดำเนินการ",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "C147852",
  ),
  WaitingforpetitionerModel(
    Colors.deepOrange,
    "รอผู้ยื่นคำร้องดำเนินการ",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "C369852",
  ),
  WaitingforpetitionerModel(
    Colors.deepPurple,
    "รอผู้ยื่นคำร้องดำเนินการ",
    "คำร้องงานบริการ",
    Config.instance.systemImagePath,
    "S657894",
  ),
];
