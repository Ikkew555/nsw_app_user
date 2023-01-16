// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/component/btn_about_system.dart';
import 'package:nsw_app/component/btn_change_pin.dart';
import 'package:nsw_app/component/btn_logout.dart';
import 'package:nsw_app/component/btn_open_biometric.dart';
import 'package:nsw_app/component/btn_privacy_consent.dart';
import 'package:nsw_app/config.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          "โปรไฟล์",
          style: GoogleFonts.prompt(
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color.fromRGBO(19, 71, 154, 1),
                          Color.fromRGBO(7, 20, 124, 1)
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          // color: Colors.green,
                          height: MediaQuery.of(context).size.height / 8,
                        ),
                        Image.asset(
                          "assets/profile_img.png",
                          width: MediaQuery.of(context).size.width / 3,
                        ),
                        SizedBox(
                          // color: Colors.green,
                          height: MediaQuery.of(context).size.height / 5,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "คุณ",
                                style: GoogleFonts.prompt(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "สมมุติ ทดสอบระบบ",
                                style: GoogleFonts.prompt(
                                  textStyle: TextStyle(
                                    fontSize: Config.instance.fontinfo,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
                                child: Divider(
                                  thickness: 1,
                                  indent: 120,
                                  endIndent: 120,
                                  color: Color.fromRGBO(179, 193, 206, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // constraints: BoxConstraints(
                    //   maxHeight: double.infinity,
                    // ),
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0.0),
                      child: SizedBox(
                        height: 350,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: OpenBiometricButton(),
                            ),
                            Divider(
                              thickness: 2,
                              indent: 110,
                              endIndent: 110,
                              color: Color.fromRGBO(179, 193, 206, 1),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            ChangPinButton(),
                            PrivacyConsentButton(),
                            AboutSystemButton(),
                            LogOutButton(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
