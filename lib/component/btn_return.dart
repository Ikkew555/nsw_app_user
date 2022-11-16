import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';

class ReturnButton extends StatefulWidget {
  const ReturnButton({Key? key}) : super(key: key);

  @override
  State<ReturnButton> createState() => _ReturnButtonState();
}

class _ReturnButtonState extends State<ReturnButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
        Navigator.pop(context);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("ย้อนกลับ", style: Config.instance.f16semiboldwhite),
        ],
      ),
    );
  }
}
