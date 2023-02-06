import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nsw_app/pages/notification/notification.view.dart';
import 'package:nsw_app/pages/notification/notification.view.dto.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NotificationPage(),
    );
  }
}

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  late NotificationViewDto notificationDto;
  String titleText = "การแจ้งเตือน";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notificationDto = NotificationViewDto(titleText: titleText);
  }

  @override
  Widget build(BuildContext context) {
    return NotificationView(
      notificationDto: notificationDto,
    );
  }
}
