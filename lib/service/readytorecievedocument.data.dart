// รายชื่อในลิส Waitingforpetitioner

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';

class ReadytorecievedocumentModel {
  Color? color;
  String? title;
  String? subtitle;
  String? system_image_url;
  String? track_number;

  ReadytorecievedocumentModel(
    this.color,
    this.title,
    this.subtitle,
    this.system_image_url,
    this.track_number,
  );
}

List<ReadytorecievedocumentModel> items_readytorecieved = [
  ReadytorecievedocumentModel(
    Colors.amber,
    "พร้อมรับเอกสาร D",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "C207584",
  ),
  ReadytorecievedocumentModel(
    Colors.deepOrange,
    "พร้อมรับเอกสาร E",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "C214584",
  ),
  ReadytorecievedocumentModel(
    Colors.deepPurple,
    "พร้อมรับเอกสาร F",
    "คำร้องงานบริการ",
    Config.instance.systemImagePath,
    "S224584",
  ),
  ReadytorecievedocumentModel(
    Colors.pinkAccent,
    "พร้อมรับเอกสาร G",
    "คำร้องชำระเงิน",
    Config.instance.systemImagePath,
    "B284584",
  ),
  ReadytorecievedocumentModel(
    Colors.brown,
    "พร้อมรับเอกสาร H",
    "คำร้องงานท่า",
    Config.instance.systemImagePath,
    "P214575",
  ),
  ReadytorecievedocumentModel(
    Colors.amber,
    "พร้อมรับเอกสาร I",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "P958746",
  ),
  ReadytorecievedocumentModel(
    Colors.deepOrange,
    "พร้อมรับเอกสาร J",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "P214577",
  ),
  ReadytorecievedocumentModel(
    Colors.deepPurple,
    "พร้อมรับเอกสาร K",
    "คำร้องงานบริการ",
    Config.instance.systemImagePath,
    "S211545",
  ),
  ReadytorecievedocumentModel(
    Colors.pinkAccent,
    "พร้อมรับเอกสาร L",
    "คำร้องชำระเงิน",
    Config.instance.systemImagePath,
    "B214255",
  ),
];
