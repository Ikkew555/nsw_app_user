import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';

class ForgotButton extends StatefulWidget {
  const ForgotButton({Key? key}) : super(key: key);

  @override
  State<ForgotButton> createState() => _ForgotButtonState();
}

class _ForgotButtonState extends State<ForgotButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        alignment: Alignment.centerLeft,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        side: BorderSide(
          width: 1.0,
          color: Config.instance.color,
        ),
        minimumSize: const Size.fromHeight(50),
        elevation: 5,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("ลืมรหัสผ่าน", style: Config.instance.f16semiboldprimary),
        ],
      ),
    );
  }
}
