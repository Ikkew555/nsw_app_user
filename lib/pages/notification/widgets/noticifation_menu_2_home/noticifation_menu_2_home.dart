import 'package:flutter/material.dart';
import 'package:nsw_app/pages/notification/widgets/noticifation_menu_1_home/noticifation_menu_1_home.view.dart';
import 'package:nsw_app/pages/notification/widgets/noticifation_menu_1_home/noticifation_menu_1_home.view.dto.dart';
import 'package:nsw_app/pages/notification/widgets/noticifation_menu_2_home/noticifation_menu_2_home.view.dart';
import 'package:nsw_app/pages/notification/widgets/noticifation_menu_2_home/noticifation_menu_2_home.view.dto.dart';

class NotificationCardHomePage extends StatefulWidget {
  const NotificationCardHomePage({Key? key}) : super(key: key);

  @override
  State<NotificationCardHomePage> createState() =>
      _NotificationCardHomePageState();
}

class _NotificationCardHomePageState extends State<NotificationCardHomePage> {
  late NotificationCard2HomePageViewDto notificationCardHomePageViewDto;
  String iconNotificationImagePath = "assets/icon_notification_2.png";
  String titleText = "คำร้องของคุณกำลังถูกตรวจสอบ";
  String dateMeetText = "คุณมีนัดหมายในวันที่ 12 / 06 / 65";
  String dateNotificationAlert = "8 มิ.ย.";

  @override
  void initState() {
    super.initState();
    notificationCardHomePageViewDto = NotificationCard2HomePageViewDto(
      dateMeetText: dateMeetText,
      dateNotificationAlert: dateNotificationAlert,
      iconNotificationImagePath: iconNotificationImagePath,
      titleText: titleText,
    );
  }

  @override
  Widget build(BuildContext context) {
    return NotificationCard2HomePageView(
      notificationCardHomePageViewDto: notificationCardHomePageViewDto,
    );
  }
}
