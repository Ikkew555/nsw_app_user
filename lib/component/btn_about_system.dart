import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';

class AboutSystemButton extends StatefulWidget {
  const AboutSystemButton({Key? key}) : super(key: key);

  @override
  State<AboutSystemButton> createState() => _AboutSystemButtonState();
}

class _AboutSystemButtonState extends State<AboutSystemButton> {
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
        primary: Colors.white,
        elevation: 5,
      ),
      onPressed: () {},
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
          Text("Contact us", style: Config.instance.f16semiboldblack),
        ],
      ),
    );
  }
}
