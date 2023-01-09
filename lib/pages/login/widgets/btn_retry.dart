import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';

class RetryButton extends StatefulWidget {
  const RetryButton({Key? key}) : super(key: key);

  @override
  State<RetryButton> createState() => _RetryButtonState();
}

class _RetryButtonState extends State<RetryButton> {
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
          Text("ลองอีกครั้ง", style: Config.instance.f16semiboldwhite),
        ],
      ),
    );
  }
}
