import 'package:flutter/material.dart';
import 'package:nsw_app/pages/notification/widgets/noticifation_menu_1_home/noticifation_menu_1_home.view.dart';
import 'package:nsw_app/pages/notification/widgets/noticifation_menu_1_home/noticifation_menu_1_home.view.dto.dart';

class NotificationCardHomePage extends StatefulWidget {
  const NotificationCardHomePage({Key? key}) : super(key: key);

  @override
  State<NotificationCardHomePage> createState() =>
      _NotificationCardHomePageState();
}

class _NotificationCardHomePageState extends State<NotificationCardHomePage> {
  late NotificationCardHomePageViewDto notificationCardHomePageViewDto;
  String iconNotificationImagePath = "assets/icon_notification_1.png";
  String incomingMeetText = "ใกล้ถึงวันนัดหมาย";
  String dateMeetText = "คุณมีนัดหมายในวันที่ 12 / 06 / 65";
  String dateNotificationAlert = "8 มิ.ย.";

  @override
  void initState() {
    super.initState();
    notificationCardHomePageViewDto = NotificationCardHomePageViewDto(
      dateMeetText: dateMeetText,
      dateNotificationAlert: dateNotificationAlert,
      iconNotificationImagePath: iconNotificationImagePath,
      incomingMeetText: incomingMeetText,
    );
  }

  @override
  Widget build(BuildContext context) {
    return NotificationCardHomePageView(
      notificationCardHomePageViewDto: notificationCardHomePageViewDto,
    );
  }
}
