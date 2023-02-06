// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/notification/notification.view.dto.dart';
import 'package:nsw_app/pages/notification/widgets/noticifation_menu_1/noticifation_menu_1.dart';
import 'package:nsw_app/pages/notification/widgets/noticifation_menu_2/noticifation_menu_2.view.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({Key? key, required this.notificationDto})
      : super(key: key);

  final NotificationViewDto notificationDto;

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  late NotificationViewDto notificationDto;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(
      () {
        notificationDto = widget.notificationDto;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text(notificationDto.titleText,
                style: Config.instance.f18normalblack),
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
                    SizedBox(
                      height: 30,
                    ),
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
