// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/calendar/calendar.view.dart';
import 'package:nsw_app/pages/notification/widgets/noticifation_menu_2_home/noticifation_menu_2_home.view.dto.dart';

class NotificationCard2HomePageView extends StatefulWidget {
  const NotificationCard2HomePageView(
      {Key? key, required this.notificationCardHomePageViewDto})
      : super(key: key);

  final NotificationCard2HomePageViewDto notificationCardHomePageViewDto;

  @override
  State<NotificationCard2HomePageView> createState() =>
      _NotificationCard2HomePageViewState();
}

class _NotificationCard2HomePageViewState
    extends State<NotificationCard2HomePageView> {
  late NotificationCard2HomePageViewDto notificationCardHomePageViewDto;
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
            builder: (context) => Calendar(),
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
                      notificationCardHomePageViewDto.titleText,
                      style: Config.instance.f16semiboldblack,
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
