// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:badges/badges.dart' as badges;
import 'package:badges/badges.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/component/btn_viewall_notification.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/notification/widgets/noticifation_menu_1_home/noticifation_menu_1_home.dart';
import 'package:nsw_app/pages/notification/widgets/noticifation_menu_2/noticifation_menu_2.view.dart';
import 'package:nsw_app/pages/notification/widgets/noticifation_menu_1/noticifation_menu_1.view.dart';

class NotificationButton extends StatefulWidget {
  const NotificationButton({Key? key}) : super(key: key);

  @override
  State<NotificationButton> createState() => _NotificationButtonState();
}

class _NotificationButtonState extends State<NotificationButton> {
  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      position: BadgePosition.topStart(
        top: -4,
        start: 20,
      ),
      badgeColor: Color.fromRGBO(255, 195, 0, 1),
      badgeContent: Text(
        '9+',
        style: GoogleFonts.notoSansThai(
          textStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
      child: IconButton(
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
        icon: Icon(
          Icons.notifications_none_rounded,
          color: Config.instance.primarycolor,
        ),
      ),
    );
  }
}
