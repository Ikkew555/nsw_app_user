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
        foregroundColor: Colors.black,
        backgroundColor: Config.instance.color,
        alignment: Alignment.centerLeft,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
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
          Text("ลองอีกครั้ง", style: Config.instance.f16semiboldwhite),
        ],
      ),
    );
  }
}
