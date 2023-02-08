// รายชื่อในลิส Waitingforpetitioner

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';

class TheDepartmentIsWorkingModel {
  Color? color;
  String? title;
  String? subtitle;
  String? system_image_url;
  String? track_number;

  TheDepartmentIsWorkingModel(
    this.color,
    this.title,
    this.subtitle,
    this.system_image_url,
    this.track_number,
  );
}

List<TheDepartmentIsWorkingModel> items_working = [
  TheDepartmentIsWorkingModel(
    Colors.amber,
    "กรมฯ กำลังดำเนินการ H",
    "คำร้องงานท่า",
    Config.instance.systemImagePath,
    "P214575",
  ),
  TheDepartmentIsWorkingModel(
    Colors.amber,
    "กรมฯ กำลังดำเนินการ I",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "P958746",
  ),
  TheDepartmentIsWorkingModel(
    Colors.amber,
    "กรมฯ กำลังดำเนินการ J",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "P214577",
  ),
  TheDepartmentIsWorkingModel(
    Colors.amber,
    "กรมฯ กำลังดำเนินการ K",
    "คำร้องงานบริการ",
    Config.instance.systemImagePath,
    "S211545",
  ),
  TheDepartmentIsWorkingModel(
    Colors.amber,
    "กรมฯ กำลังดำเนินการ L",
    "คำร้องชำระเงิน",
    Config.instance.systemImagePath,
    "B214255",
  ),
];
