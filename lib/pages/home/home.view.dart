// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'dart:ui';

import 'package:badges/badges.dart' as badges;
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nsw_app/component/menu_meeting_menu.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/notification/widgets/btn_notification.dart';
import 'package:nsw_app/model/user.dart';
import 'package:nsw_app/pages/home/home.view.dto.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key, required this.homeDto}) : super(key: key);

  final HomeDto homeDto;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late HomeDto homeDto;
  Logger logger = Logger();

  @override
  void initState() {
    super.initState();
    setState(() {
      homeDto = widget.homeDto;
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 44.0, 10.0, 0),
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            shape: StadiumBorder(),
                            backgroundColor: Colors.transparent,
                            splashFactory: NoSplash.splashFactory,
                            shadowColor: Colors.transparent,
                            elevation: 0,
                          ),
                          onPressed: () {
                            HandleonPressedProfile();
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                homeDto.imagePathProfile,
                                width: 50,
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: homeDto.helloText,
                                      style: Config.instance.f22boldprimary,
                                    ),
                                    TextSpan(
                                      text: ''' ${User.instance.prefix}''',
                                      style: Config.instance.f12semiboldprimary,
                                    ),
                                    TextSpan(
                                      text:
                                          '''\n${User.instance.displayName.toString()}''', // user name and surname
                                      style: Config.instance.f16semiboldblack,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        NotificationButton(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 20.0),
                    child: Divider(
                      color: Color.fromRGBO(102, 102, 102, 1),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                        ),
                        onPressed: () {
                          HandleonPressedWaitingforPetitioner();
                          logger.d("HandleonPressedWaitingforPetitioner");
                        },
                        child: Column(
                          children: [
                            badges.Badge(
                              position: BadgePosition.topEnd(),
                              badgeColor: Color.fromRGBO(255, 195, 0, 1),
                              badgeContent: Text(
                                homeDto.status_number_waiting,
                                style: Config.instance.f16normalwhite,
                              ),
                              child: PhysicalShape(
                                shadowColor: Colors.black,
                                elevation: 2,
                                clipper:
                                    ShapeBorderClipper(shape: CircleBorder()),
                                color: Colors.transparent,
                                child: Image.asset(
                                  homeDto.imagePathMenuWait,
                                  width: 60,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              homeDto.menuWaitText,
                              style: Config.instance.f12normalgrey,
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                        ),
                        onPressed: () {
                          HandleonPressedInProgess();
                          logger.d("HandleonPressedInProgess");
                        },
                        child: Column(
                          children: [
                            badges.Badge(
                              position: BadgePosition.topEnd(),
                              badgeColor: Color.fromRGBO(255, 195, 0, 1),
                              badgeContent: Text(
                                homeDto.status_number_working,
                                style: Config.instance.f16normalwhite,
                              ),
                              child: PhysicalShape(
                                shadowColor: Colors.black,
                                elevation: 2,
                                clipper:
                                    ShapeBorderClipper(shape: CircleBorder()),
                                color: Colors.transparent,
                                child: Image.asset(
                                  homeDto.imagePathMenuWorking,
                                  width: 60,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              homeDto.menuWorkingText,
                              style: Config.instance.f12normalgrey,
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                        ),
                        onPressed: () {
                          HandleonPressedReadyToReceiveDocuments();
                          logger.d("HandleonPressedReadyToReceiveDocuments");
                        },
                        child: Column(
                          children: [
                            badges.Badge(
                              position: BadgePosition.topEnd(),
                              badgeColor: Color.fromRGBO(255, 195, 0, 1),
                              badgeContent: Text(
                                homeDto.status_number_ready,
                                style: Config.instance.f16normalwhite,
                              ),
                              child: PhysicalShape(
                                shadowColor: Colors.black,
                                elevation: 2,
                                clipper:
                                    ShapeBorderClipper(shape: CircleBorder()),
                                color: Colors.transparent,
                                child: Image.asset(
                                  homeDto.imagePathMenuDocument,
                                  width: 60,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              homeDto.menuDocumentText,
                              style: Config.instance.f12normalgrey,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 15.0),
                    child: Container(
                      constraints: BoxConstraints(
                        maxHeight: double.infinity,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 1,
                            offset: Offset(0, 4), // Shadow position
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          HandleonTapWelcomeWeb();
                        },
                        child: Image.asset(
                          homeDto.imagePathWelcomeWeb,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                    child: Container(
                      constraints: BoxConstraints(
                        maxHeight: double.infinity,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 1,
                            offset: Offset(0, 4), // Shadow position
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          HandleonTapEservice();
                        },
                        child: Image.asset(
                          homeDto.imagePathEservice,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "การนัดหมาย",
                          style: Config.instance.f16boldprimary,
                        ),
                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Color.fromRGBO(19, 71, 154, 1),
                              minimumSize: Size.fromHeight(40),
                              shape: StadiumBorder(),
                            ),
                            child: Text(
                              "การนัดหมายทั้งหมด",
                              style: Config.instance.f12normalwhite,
                            ),
                            onPressed: () {
                              HandleonPressedCalendar();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MeetingCard(),
                  SizedBox(
                    height: 10,
                  ),
                  MeetingCard(),
                  SizedBox(
                    height: 10,
                  ),
                  MeetingCard(),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  HandleonTapWelcomeWeb() {
    homeDto.onTapWelcomeWeb.call();
  }

  HandleonTapEservice() {
    homeDto.onTapEservice.call();
  }

  HandleonPressedProfile() {
    homeDto.onPressedProfile.call();
  }

  HandleonPressedCalendar() {
    homeDto.onPressedCalendar.call();
  }

  HandleonPressedInProgess() {
    homeDto.onPressedInProgess.call();
  }

  HandleonPressedReadyToReceiveDocuments() {
    homeDto.onPressedReadyToReceiveDocuments.call();
  }

  HandleonPressedWaitingforPetitioner() {
    homeDto.onPressedWaitingforPetitioner.call();
  }
}
