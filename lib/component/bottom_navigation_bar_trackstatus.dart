// ignore_for_file: prefer_const_constructors, unused_field, prefer_final_fields, unused_element, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nsw_app/component/bottom_navigation_bar_qrscanpage.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/home/home.dart';
import 'package:nsw_app/pages/notification/notification.dart';
import 'package:nsw_app/pages/notification/notification.view.dart';
import 'package:nsw_app/pages/notification/notification.view.dto.dart';
import 'package:nsw_app/pages/profile/profile.dart';
import 'package:nsw_app/pages/scanQR/scanqr.dart';
import 'package:nsw_app/pages/track_status/track_status.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavBarTrackStatus extends StatefulWidget {
  const BottomNavBarTrackStatus({Key? key}) : super(key: key);

  @override
  State<BottomNavBarTrackStatus> createState() =>
      _BottomNavBarTrackStatusState();
}

class _BottomNavBarTrackStatusState extends State<BottomNavBarTrackStatus> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    Home(),
    TrackStatus(),
    ScanQR(),
    NotificationPage(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = TrackStatus();
  int currentTab = 1;
  final List<Widget> screens = [
    Home(),
    TrackStatus(),
    NotificationPage(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          style: TextStyle(
                            fontSize: 12,
                            color: currentTab == 0
                                ? Config.instance.color
                                : Colors.grey,
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
                          style: TextStyle(
                            fontSize: 12,
                            color: currentTab == 1
                                ? Config.instance.color
                                : Colors.grey,
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
                          style: TextStyle(
                            fontSize: 12,
                            color: currentTab == 3
                                ? Config.instance.color
                                : Colors.grey,
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
                          style: TextStyle(
                            fontSize: 12,
                            color: currentTab == 4
                                ? Config.instance.color
                                : Colors.grey,
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
          PersistentNavBarNavigator.pushNewScreen(context,
              screen: ScanQR(), withNavBar: false);
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

      // bottomNavigationBar: BottomNavigationBar(
      //   showUnselectedLabels: true,
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Color.fromRGBO(19, 71, 154, 1),
      //   unselectedItemColor: Colors.black38,
      //   selectedFontSize: 12,
      //   onTap: _onItemTapped,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_outlined),
      //       label: 'หน้าหลัก',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.insert_drive_file_outlined),
      //       label: 'ติดตามสถานะ',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.qr_code_scanner),
      //       label: 'แสกน QR',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.notifications_none_outlined),
      //       label: 'แจ้งเตือน',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings_outlined),
      //       label: 'ตั้งค่า',
      //     ),
      //   ],
      // ),
