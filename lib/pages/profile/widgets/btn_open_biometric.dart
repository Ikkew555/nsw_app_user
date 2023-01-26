// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';

class OpenBiometricButton extends StatefulWidget {
  const OpenBiometricButton({Key? key}) : super(key: key);

  @override
  State<OpenBiometricButton> createState() => _OpenBiometricButtonState();
}

class _OpenBiometricButtonState extends State<OpenBiometricButton> {
  bool light = false;

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
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
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
              Text("เปิดการใช้งานด้วยอัตลักษณ์",
                  style: Config.instance.f16semiboldblack),
            ],
          ),
          Switch(
            // This bool value toggles the switch.
            value: light,
            activeColor: Color.fromRGBO(235, 158, 0, 1),
            onChanged: (bool value) {
              // This is called when the user toggles the switch.
              setState(() {
                light = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
