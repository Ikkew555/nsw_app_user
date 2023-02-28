// ignore_for_file: use_build_context_synchronously, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/model/user.dart';
import 'package:nsw_app/pages/login/login.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogOutButton extends StatefulWidget {
  const LogOutButton({Key? key}) : super(key: key);

  @override
  State<LogOutButton> createState() => _LogOutButtonState();
}

class _LogOutButtonState extends State<LogOutButton> {
  Logger logger = Logger();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        alignment: Alignment.centerLeft,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: const Size.fromHeight(50),
        elevation: 5,
      ),
      onPressed: () async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.remove('prefsUsername');
        prefs.remove('prefsPassword');
        logger.d(
          "Remember Clear !!!\n"
          "Remember Info\n"
          "username : ${User.instance.prefsUsername}\n"
          "password : ${User.instance.prefsPassword}",
        ); //Check light status.
        PersistentNavBarNavigator.pushNewScreen(context,
            screen: Login(), withNavBar: false);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Color.fromRGBO(179, 193, 206, 1),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text("ออกจากระบบ", style: Config.instance.f16semiboldblack),
        ],
      ),
    );
  }
}
