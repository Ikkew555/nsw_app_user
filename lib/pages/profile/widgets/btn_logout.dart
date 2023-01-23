import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/login/login.dart';
import 'package:nsw_app/pages/login/login.view.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogOutButton extends StatefulWidget {
  const LogOutButton({Key? key}) : super(key: key);

  @override
  State<LogOutButton> createState() => _LogOutButtonState();
}

class _LogOutButtonState extends State<LogOutButton> {
  // final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  // Future<void> _logout() async {
  //   final SharedPreferences prefs = await _prefs;

  //   final username_out = await prefs.remove('username');
  //   final password_out = await prefs.remove('password');
  // }

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
      onPressed: () {
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
