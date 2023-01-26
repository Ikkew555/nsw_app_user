// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/privacy_consent/privacy_consent.view.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class PrivacyConsentButton extends StatefulWidget {
  const PrivacyConsentButton({Key? key}) : super(key: key);

  @override
  State<PrivacyConsentButton> createState() => _PrivacyConsentButtonState();
}

class _PrivacyConsentButtonState extends State<PrivacyConsentButton> {
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
            screen: PrivacyConsentView(), withNavBar: false);
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
          Text("Privacy - consent", style: Config.instance.f16semiboldblack),
        ],
      ),
    );
  }
}
