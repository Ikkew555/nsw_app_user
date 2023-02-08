// รายชื่อในลิส Waitingforpetitioner

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';

class CompletedModel {
  Color? color;
  String? title;
  String? subtitle;
  String? system_image_url;
  String? track_number;

  CompletedModel(
    this.color,
    this.title,
    this.subtitle,
    this.system_image_url,
    this.track_number,
  );
}

List<CompletedModel> items_completed = [
  CompletedModel(
    Colors.green,
    "ดำเนินการแล้วเสร็จ A",
    "คำร้องงานบริการ",
    Config.instance.systemImagePath,
    "S124584",
  ),
  CompletedModel(
    Colors.green,
    "ดำเนินการแล้วเสร็จ B",
    "คำร้องชำระเงิน",
    Config.instance.systemImagePath,
    "B124574",
  ),
  CompletedModel(
    Colors.green,
    "ดำเนินการแล้วเสร็จ C",
    "คำร้องงานท่า",
    Config.instance.systemImagePath,
    "P154584",
  ),
  CompletedModel(
    Colors.green,
    "ดำเนินการแล้วเสร็จ D",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "C207584",
  ),
  CompletedModel(
    Colors.green,
    "ดำเนินการแล้วเสร็จ E",
    "คำร้องงานท่า",
    Config.instance.systemImagePath,
    "P154574",
  ),
  CompletedModel(
    Colors.green,
    "ดำเนินการแล้วเสร็จ F",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "C257584",
  ),
  CompletedModel(
    Colors.green,
    "ดำเนินการแล้วเสร็จ A",
    "คำร้องงานท่า",
    Config.instance.systemImagePath,
    "P154584",
  ),
  CompletedModel(
    Colors.green,
    "ดำเนินการแล้วเสร็จ A",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "C277584",
  ),
];
