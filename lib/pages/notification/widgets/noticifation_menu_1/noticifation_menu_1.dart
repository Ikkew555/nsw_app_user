import 'package:flutter/material.dart';
import 'package:nsw_app/pages/notification/widgets/noticifation_menu_1/noticifation_menu_1.view.dart';
import 'package:nsw_app/pages/notification/widgets/noticifation_menu_1/noticifation_menu_1.view.dto.dart';

class NotificationCard extends StatefulWidget {
  const NotificationCard({Key? key}) : super(key: key);

  @override
  State<NotificationCard> createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  late NotificationCardViewDto notificationCardViewDto;
  String iconNotificationImagePath = "assets/icon_notification_1.png";
  String incomingMeetText = "ใกล้ถึงวันนัดหมาย";
  String dateMeetText = "คุณมีนัดหมายในวันที่ 12 / 06 / 65";
  String dateNotificationAlert = "8 มิ.ย.";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notificationCardViewDto = NotificationCardViewDto(
      dateMeetText: dateMeetText,
      dateNotificationAlert: dateNotificationAlert,
      iconNotificationImagePath: iconNotificationImagePath,
      incomingMeetText: incomingMeetText,
    );
  }

  @override
  Widget build(BuildContext context) {
    return NotificationCardView(
      notificationCardViewDto: notificationCardViewDto,
    );
  }
}
