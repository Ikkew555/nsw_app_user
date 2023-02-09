// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        constraints: BoxConstraints(
          maxHeight: double.infinity,
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey, blurRadius: 3.0,
                offset: Offset(1, 4), // Shadow position
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 5, 10),
                        child: SizedBox(
                          width: 50,
                          child: Image.asset(
                            "assets/logo_nsw_white_bg.png",
                            width: MediaQuery.of(context).size.width / 10,
                          ),
                        ),
                      ),
                      Text(
                        "กรมเจ้าท่า\nMARINE EPARTMENT",
                        style: Config.instance.f16semiboldblack,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(14, 10, 21, 10),
                        child: Image.asset(
                          "assets/location.png",
                          width: 20,
                        ),
                      ),
                      Text(
                        "1278 ถ.โยธา แขวงตลาดน้อย \nเขตสัมพันธวงศ์ กรุงเทพฯ 10100",
                        style: Config.instance.f12semiboldgrey,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(14, 10, 20, 10),
                        child: Image.asset(
                          "assets/phone.png",
                          width: 20,
                        ),
                      ),
                      Text(
                        "โทรศัพท์: 0-22331311-8   โทรสาร: 0-2238-3017",
                        style: Config.instance.f12semiboldgrey,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(14, 10, 20, 10),
                        child: Image.asset(
                          "assets/post.png",
                          width: 20,
                        ),
                      ),
                      Text(
                        "ตู้ ปณ. 1199",
                        style: Config.instance.f12semiboldgrey,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(14, 10, 20, 10),
                        child: Image.asset(
                          "assets/24call.png",
                          width: 20,
                        ),
                      ),
                      Text(
                        "สายด่วน 1199 (ตลอด 24 ชั่วโมง)",
                        style: Config.instance.f12semiboldgrey,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(14, 10, 20, 10),
                              child: Image.asset(
                                "assets/mail.png",
                                width: 20,
                              ),
                            ),
                            Text(
                              "marine@md.go.th",
                              style: Config.instance.f12semiboldgrey,
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Image.asset(
                            "assets/qrcode_location.png",
                            width: 60,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
