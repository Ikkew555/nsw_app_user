// ignore_for_file: prefer_const_constructors, unused_field, prefer_final_fields, unused_element, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/home/home.dart';
import 'package:nsw_app/pages/notification/notification.dart';
import 'package:nsw_app/pages/notification/notification.view.dart';
import 'package:nsw_app/pages/notification/notification.view.dto.dart';
import 'package:nsw_app/pages/profile/profile.dart';
import 'package:nsw_app/pages/scanQR/scanqr.dart';
import 'package:nsw_app/pages/track_status/track_status.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();
  int currentTab = 0;

  @override
  void initState() {
    super.initState();
    Logger logger = Logger();
    logger.d("message from navbar");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(
                        () {
                          currentScreen = Home();
                          currentTab = 0;
                        },
                      );
                    },
                    minWidth: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_outlined,
                          color: currentTab == 0
                              ? Config.instance.color
                              : Colors.grey,
                        ),
                        Text(
                          "หน้าหลัก",
                          style: GoogleFonts.prompt(
                            textStyle: TextStyle(
                              fontSize: 12,
                              color: currentTab == 0
                                  ? Config.instance.color
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(
                        () {
                          currentScreen = TrackStatus();
                          currentTab = 1;
                        },
                      );
                    },
                    minWidth: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.insert_drive_file_outlined,
                          color: currentTab == 1
                              ? Config.instance.color
                              : Colors.grey,
                        ),
                        Text(
                          "ติดตามสถานะ",
                          style: GoogleFonts.prompt(
                            textStyle: TextStyle(
                              fontSize: 12,
                              color: currentTab == 1
                                  ? Config.instance.color
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(
                        () {
                          currentScreen = NotificationPage();
                          currentTab = 3;
                        },
                      );
                    },
                    minWidth: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.notifications_none_outlined,
                          color: currentTab == 3
                              ? Config.instance.color
                              : Colors.grey,
                        ),
                        Text(
                          "แจ้งเตือน",
                          style: GoogleFonts.prompt(
                            textStyle: TextStyle(
                              fontSize: 12,
                              color: currentTab == 3
                                  ? Config.instance.color
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(
                        () {
                          currentScreen = Profile();
                          currentTab = 4;
                        },
                      );
                    },
                    minWidth: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          color: currentTab == 4
                              ? Config.instance.color
                              : Colors.grey,
                        ),
                        Text(
                          "ตั้งค่า",
                          style: GoogleFonts.prompt(
                            textStyle: TextStyle(
                              fontSize: 12,
                              color: currentTab == 4
                                  ? Config.instance.color
                                  : Colors.grey,
                            ),
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
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: Config.instance.color,
        onPressed: () {
          PersistentNavBarNavigator.pushNewScreen(
            context,
            screen: ScanQR(),
            withNavBar: true,
          );

          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => const ScanQR(),
          //   ),
          // );
        },
        child: Icon(
          Icons.qr_code_scanner,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class NavBarPersistance extends StatefulWidget {
  const NavBarPersistance({Key? key}) : super(key: key);

  @override
  State<NavBarPersistance> createState() => _NavBarPersistanceState();
}

class _NavBarPersistanceState extends State<NavBarPersistance> {
  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
        Home(),
        TrackStatus(),
        ScanQR(),
        NotificationPage(),
        Profile(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.home),
          title: ("หน้าหลัก"),
          textStyle: Config.instance.f12normalprimary,
          activeColorPrimary: CupertinoColors.activeBlue,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.doc_text_search),
          title: ("ติดตามสถานะ"),
          textStyle: Config.instance.f12normalprimary,
          activeColorPrimary: CupertinoColors.activeBlue,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          // onPressed: selectedHandler(),
          icon: Icon(
            CupertinoIcons.qrcode_viewfinder,
            color: Colors.white,
          ),
          title: ("แสกน QR"),
          textStyle: Config.instance.f12normalprimary,
          activeColorPrimary: CupertinoColors.activeBlue,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.calendar),
          title: ("นัดหมาย"),
          textStyle: Config.instance.f12normalprimary,
          activeColorPrimary: CupertinoColors.activeBlue,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.settings),
          title: ("ตั้งค่า"),
          textStyle: Config.instance.f12normalprimary,
          activeColorPrimary: CupertinoColors.activeBlue,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style15,
    );
  }

  void selectedHandler() {
    PersistentNavBarNavigator.pushNewScreen(context,
        screen: ScanQR(), withNavBar: false);
  }
}
