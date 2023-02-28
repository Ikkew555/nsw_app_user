// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/component/bottom_navigation_bar_notification.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/calendar/calendar.view.dart';
import 'package:nsw_app/pages/notification/widgets/noticifation_menu_1/noticifation_menu_1.view.dto.dart';

class NotificationCardView extends StatefulWidget {
  const NotificationCardView({Key? key, required this.notificationCardViewDto})
      : super(key: key);

  final NotificationCardViewDto notificationCardViewDto;

  @override
  State<NotificationCardView> createState() => _NotificationCardViewState();
}

class _NotificationCardViewState extends State<NotificationCardView> {
  late NotificationCardViewDto notificationCardViewDto;

  @override
  void initState() {
    super.initState();
    setState(() {
      notificationCardViewDto = widget.notificationCardViewDto;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 1,
              offset: Offset(0, 2), // Shadow position
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  bottomLeft: Radius.circular(5.0),
                ),
                color: Config.instance.color,
              ),
              height: 75,
              width: 7,
            ),
            SizedBox(
              height: 67,
              width: MediaQuery.of(context).size.width - 35,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          notificationCardViewDto.iconNotificationImagePath,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              notificationCardViewDto.incomingMeetText,
                              style: Config.instance.f16semiboldblack,
                            ),
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: notificationCardViewDto
                                        .incomingMeetText,
                                    style: Config.instance.f12normalgrey,
                                  ),
                                  TextSpan(
                                    text: notificationCardViewDto.MeetTimeText,
                                    style: Config.instance.f12normalprimary,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      notificationCardViewDto.dateNotificationAlert,
                      style: Config.instance.f12normalgrey,
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
