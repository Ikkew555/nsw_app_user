// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/component/btn_view_notification.dart';
import 'package:nsw_app/component/noticifation_menu_1.dart';
import 'package:nsw_app/component/noticifation_menu_2.dart';
import 'package:nsw_app/config.dart';

class NotificationButton extends StatefulWidget {
  const NotificationButton({Key? key}) : super(key: key);

  @override
  State<NotificationButton> createState() => _NotificationButtonState();
}

class _NotificationButtonState extends State<NotificationButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          contentPadding: EdgeInsets.only(left: 10, right: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          content: SizedBox(
            height: 470,
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "แจ้งเตือน",
                    style: Config.instance.f16semiboldblack,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                NotificationCardHomePage(),
                NotificationCard2HomePage(),
                NotificationCardHomePage(),
                NotificationCard2HomePage(),
                NotificationCard2HomePage(),
                ViewNotificationButton(),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
      icon: Icon(Icons.notifications_none_rounded),
    );
  }
}
