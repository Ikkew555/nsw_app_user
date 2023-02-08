// รายชื่อในลิส trackstatus

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';

class TrackStatusModel {
  Color? color;
  String? title;
  String? subtitle;
  String? system_image_url;
  String? track_number;

  TrackStatusModel(
    this.color,
    this.title,
    this.subtitle,
    this.system_image_url,
    this.track_number,
  );
}

List<TrackStatusModel> items = [
  TrackStatusModel(
    Colors.amber,
    "คำร้อง A",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "C124520",
  ),
  TrackStatusModel(
    Colors.deepOrange,
    "คำร้อง B",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "C124525",
  ),
  TrackStatusModel(
    Colors.deepPurple,
    "คำร้อง C",
    "คำร้องงานบริการ",
    Config.instance.systemImagePath,
    "S124584",
  ),
  TrackStatusModel(
    Colors.pinkAccent,
    "คำร้อง D",
    "คำร้องชำระเงิน",
    Config.instance.systemImagePath,
    "B124574",
  ),
  TrackStatusModel(
    Colors.brown,
    "คำร้อง E",
    "คำร้องงานท่า",
    Config.instance.systemImagePath,
    "P154584",
  ),
  TrackStatusModel(
    Colors.amber,
    "คำร้อง A",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "C207584",
  ),
  TrackStatusModel(
    Colors.deepOrange,
    "คำร้อง B",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "C214584",
  ),
  TrackStatusModel(
    Colors.deepPurple,
    "คำร้อง C",
    "คำร้องงานบริการ",
    Config.instance.systemImagePath,
    "S224584",
  ),
  TrackStatusModel(
    Colors.pinkAccent,
    "คำร้อง D",
    "คำร้องชำระเงิน",
    Config.instance.systemImagePath,
    "B284584",
  ),
  TrackStatusModel(
    Colors.brown,
    "คำร้อง E",
    "คำร้องงานท่า",
    Config.instance.systemImagePath,
    "P214575",
  ),
  TrackStatusModel(
    Colors.amber,
    "คำร้อง A",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "P958746",
  ),
  TrackStatusModel(
    Colors.deepOrange,
    "คำร้อง B",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "P214577",
  ),
  TrackStatusModel(
    Colors.deepPurple,
    "คำร้อง C",
    "คำร้องงานบริการ",
    Config.instance.systemImagePath,
    "S211545",
  ),
  TrackStatusModel(
    Colors.pinkAccent,
    "คำร้อง D",
    "คำร้องชำระเงิน",
    Config.instance.systemImagePath,
    "B214255",
  ),
  TrackStatusModel(
    Colors.brown,
    "คำร้อง E",
    "คำร้องงานท่า",
    Config.instance.systemImagePath,
    "P214565",
  ),
  TrackStatusModel(
    Colors.amber,
    "คำร้อง A",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "C147852",
  ),
  TrackStatusModel(
    Colors.deepOrange,
    "คำร้อง B",
    "คำร้องงานตรวจเรือ",
    Config.instance.systemImagePath,
    "C369852",
  ),
  TrackStatusModel(
    Colors.deepPurple,
    "คำร้อง C",
    "คำร้องงานบริการ",
    Config.instance.systemImagePath,
    "S657894",
  ),
  TrackStatusModel(
    Colors.pinkAccent,
    "คำร้อง D",
    "คำร้องชำระเงิน",
    Config.instance.systemImagePath,
    "B214598",
  ),
  TrackStatusModel(
    Colors.brown,
    "คำร้อง E",
    "คำร้องงานท่า",
    Config.instance.systemImagePath,
    "P236125",
  ),
];
