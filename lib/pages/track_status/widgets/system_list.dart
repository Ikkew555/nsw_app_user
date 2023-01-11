// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/config.dart';
import 'package:url_launcher/url_launcher.dart';

class SystemBox extends StatefulWidget {
  const SystemBox(
      {Key? key, required this.system_name, required this.system_img})
      : super(key: key);

  @override
  State<SystemBox> createState() => _SystemBoxState();

  final system_name;
  final system_img;
}

class _SystemBoxState extends State<SystemBox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            contentPadding: EdgeInsets.only(left: 10, right: 10),
            content: SizedBox(
              height: MediaQuery.of(context).size.height - 50,
              width: MediaQuery.of(context).size.width - 50,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        "งานทะเบียนเรือย่อย",
                        style: Config.instance.f18boldblack,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SystemBox(
                            system_img: "assets/system_1.png",
                            system_name: "ระบบย่อย A"),
                        SystemBox(
                            system_img: "assets/system_2.png",
                            system_name: "ระบบย่อย B"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SystemBox(
                            system_img: "assets/system_3.png",
                            system_name: "ระบบย่อย C"),
                        SystemBox(
                            system_img: "assets/system_4.png",
                            system_name: "ระบบย่อย D"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SystemBox(
                            system_img: "assets/system_5.png",
                            system_name: "ระบบย่อย F"),
                        SystemBox(
                            system_img: "assets/system_6.png",
                            system_name: "ระบบย่อย G"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SystemBox(
                            system_img: "assets/system_7.png",
                            system_name: "ระบบย่อย H"),
                        SystemBox(
                            system_img: "assets/system_8.png",
                            system_name: "ระบบย่อย I"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SystemBox(
                            system_img: "assets/system_9.png",
                            system_name: "ระบบย่อย J"),
                        SystemBox(
                            system_img: "assets/system_10.png",
                            system_name: "ระบบย่อย K"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SystemBox(
                            system_img: "assets/system_11.png",
                            system_name: "ระบบย่อย L"),
                        SystemBox(
                            system_img: "assets/system_12.png",
                            system_name: "ระบบย่อย M"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SystemBox(
                            system_img: "assets/system_13.png",
                            system_name: "ระบบย่อย N"),
                        SystemBox(
                            system_img: "assets/system_14.png",
                            system_name: "ระบบย่อย O"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SystemBox(
                            system_img: "assets/system_3.png",
                            system_name: "ระบบย่อย P"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(210, 219, 236, 1),
              blurRadius: 2,
              offset: Offset(1, 2), // Shadow position
            ),
          ],
        ),
        width: 150,
        height: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              child: Image.asset(
                widget.system_img,
                width: 60,
              ),
              onTap: () {},
            ),
            Text(
              widget.system_name,
              style: Config.instance.f12semiboldprimary,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
