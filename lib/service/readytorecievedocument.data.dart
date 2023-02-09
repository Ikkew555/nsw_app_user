// รายชื่อในลิส Waitingforpetitioner

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';

class ReadytorecievedocumentModel {
  Color? color;
  String? title;
  String? url;
  String? system_image_url;
  String? track_number;

  ReadytorecievedocumentModel(
    this.color,
    this.title,
    this.url,
    this.system_image_url,
    this.track_number,
  );
}

List<ReadytorecievedocumentModel> items_readytorecieved = [
  ReadytorecievedocumentModel(
    Colors.amber,
    "พร้อมรับเอกสาร D",
    "https://md.go.th/",
    Config.instance.systemImagePath,
    "C207584",
  ),
  ReadytorecievedocumentModel(
    Colors.deepOrange,
    "พร้อมรับเอกสาร E",
    "https://md.go.th/",
    Config.instance.systemImagePath,
    "C214584",
  ),
  ReadytorecievedocumentModel(
    Colors.deepPurple,
    "พร้อมรับเอกสาร F",
    "https://www.fluttercampus.com/guide/131/how-to-use-conditional-statement-if-else-on-widget-in-flutter/",
    Config.instance.systemImagePath,
    "S224584",
  ),
  ReadytorecievedocumentModel(
    Colors.pinkAccent,
    "พร้อมรับเอกสาร G",
    null,
    Config.instance.systemImagePath,
    "B284584",
  ),
  ReadytorecievedocumentModel(
    Colors.brown,
    "พร้อมรับเอกสาร H",
    null,
    Config.instance.systemImagePath,
    "P214575",
  ),
  ReadytorecievedocumentModel(
    Colors.amber,
    "พร้อมรับเอกสาร I",
    "https://md.go.th/",
    Config.instance.systemImagePath,
    "P958746",
  ),
  ReadytorecievedocumentModel(
    Colors.deepOrange,
    "พร้อมรับเอกสาร J",
    null,
    Config.instance.systemImagePath,
    "P214577",
  ),
  ReadytorecievedocumentModel(
    Colors.deepPurple,
    "พร้อมรับเอกสาร K",
    "https://md.go.th/",
    Config.instance.systemImagePath,
    "S211545",
  ),
  ReadytorecievedocumentModel(
    Colors.pinkAccent,
    "พร้อมรับเอกสาร L",
    null,
    Config.instance.systemImagePath,
    "B214255",
  ),
];
