// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/component/noticifation_menu_1.dart';
import 'package:nsw_app/component/noticifation_menu_2.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text(
              "การแจ้งเตือน",
              style: GoogleFonts.prompt(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
            automaticallyImplyLeading: false,
          )
        ],
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    NotificationCard(),
                    NotificationCard2(),
                    NotificationCard(),
                    NotificationCard2(),
                    NotificationCard(),
                    NotificationCard2(),
                    NotificationCard(),
                    NotificationCard2(),
                    NotificationCard(),
                    NotificationCard2(),
                    NotificationCard(),
                    NotificationCard2(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
