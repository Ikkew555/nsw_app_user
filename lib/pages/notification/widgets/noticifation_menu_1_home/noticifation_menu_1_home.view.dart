// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/calendar/calendarpage.dart';
import 'package:nsw_app/pages/notification/widgets/noticifation_menu_1_home/noticifation_menu_1_home.view.dto.dart';

import '../../notification.view.dto.dart';

class NotificationCardHomePageView extends StatefulWidget {
  const NotificationCardHomePageView(
      {Key? key, required this.notificationCardHomePageViewDto})
      : super(key: key);

  final NotificationCardHomePageViewDto notificationCardHomePageViewDto;

  @override
  State<NotificationCardHomePageView> createState() =>
      _NotificationCardHomePageViewState();
}

class _NotificationCardHomePageViewState
    extends State<NotificationCardHomePageView> {
  late NotificationCardHomePageViewDto notificationCardHomePageViewDto;
  @override
  void initState() {
    super.initState();
    setState(() {
      notificationCardHomePageViewDto = widget.notificationCardHomePageViewDto;
    });
  }

  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        alignment: Alignment.centerLeft,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: const Size.fromHeight(50),
        elevation: 0,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CalendarPage(),
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 67,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 10.0),
                  child: Image.asset(
                    notificationCardHomePageViewDto.iconNotificationImagePath,
                    width: 47,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      notificationCardHomePageViewDto.incomingMeetText,
                      style: Config.instance.f12boldblack,
                    ),
                    Text(
                      notificationCardHomePageViewDto.dateMeetText,
                      style: Config.instance.f10normalgrey,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
