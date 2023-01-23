// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/model/user.dart';
import 'package:nsw_app/pages/profile/profile.view.dto.dart';
import 'package:nsw_app/pages/profile/widgets/btn_about_system.dart';
import 'package:nsw_app/pages/profile/widgets/btn_change_pin.dart';
import 'package:nsw_app/pages/profile/widgets/btn_logout.dart';
import 'package:nsw_app/pages/profile/widgets/btn_open_biometric.dart';
import 'package:nsw_app/pages/profile/widgets/btn_privacy_consent.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key, required this.profileDto}) : super(key: key);

  final ProfileDto profileDto;

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  late ProfileDto profileDto;
  var appbarheight = AppBar().preferredSize.height;

  @override
  void initState() {
    super.initState();
    setState(() {
      profileDto = widget.profileDto;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        SizedBox(
                          height: appbarheight - 17,
                        ),
                        Text(
                          "โปรไฟล์",
                          style: GoogleFonts.prompt(
                            textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 20,
                        ),
                        Image.asset(
                          profileDto.imagePathProfile,
                          width: MediaQuery.of(context).size.width / 3,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 6,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                User.instance.prefix.toString(),
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
                                User.instance.displayName
                                    .toString(), // user name and surname
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
                                    EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
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
                            ContactUsButton(),
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
