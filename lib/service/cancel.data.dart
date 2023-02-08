// รายชื่อในลิส Waitingforpetitioner

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';

class CancelModel {
  Color? color;
  String? title;
  String? subtitle;
  String? system_image_url;
  String? track_number;

  CancelModel(
    this.color,
    this.title,
    this.subtitle,
    this.system_image_url,
    this.track_number,
  );
}

List<CancelModel> items_cancel = [
  CancelModel(
    Colors.red,
    "ยกเลิกคำร้อง A",
    "คำร้องงานบริการ",
    Config.instance.systemImagePath,
    "S124584",
  ),
  CancelModel(
    Colors.red,
    "ยกเลิกคำร้อง B",
    "คำร้องชำระเงิน",
    Config.instance.systemImagePath,
    "B124574",
  ),
  CancelModel(
    Colors.red,
    "ยกเลิกคำร้อง C",
    "คำร้องงานท่า",
    Config.instance.systemImagePath,
    "P154584",
  ),
  CancelModel(
    Colors.red,
    "ยกเลิกคำร้อง D",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "C207584",
  ),
];
