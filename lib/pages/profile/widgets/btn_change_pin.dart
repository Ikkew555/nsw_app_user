// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/resetpin/resetpincode.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class ChangPinButton extends StatefulWidget {
  const ChangPinButton({Key? key}) : super(key: key);

  @override
  State<ChangPinButton> createState() => _ChangPinButtonState();
}

class _ChangPinButtonState extends State<ChangPinButton> {
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
            screen: ResetPincode(), withNavBar: false);
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
          Text("เปลี่ยนรหัส PIN", style: Config.instance.f16semiboldblack),
        ],
      ),
    );
  }
}
