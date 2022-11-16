// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/component/bottom_navigation_bar_notification.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/notificationpage.dart';

class ViewNotificationButton extends StatefulWidget {
  const ViewNotificationButton({Key? key}) : super(key: key);

  @override
  State<ViewNotificationButton> createState() => _ViewNotificationButtonState();
}

class _ViewNotificationButtonState extends State<ViewNotificationButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          alignment: Alignment.centerLeft,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          minimumSize: const Size.fromHeight(50),
          onPrimary: Colors.black,
          primary: Config.instance.color,
          elevation: 5,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BottomNavBarNotification(),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "การแจ้งเตือนทั้งหมด",
              style: GoogleFonts.prompt(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
