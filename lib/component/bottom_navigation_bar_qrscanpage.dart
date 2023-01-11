// ignore_for_file: prefer_const_constructors, unused_field, prefer_final_fields, unused_element, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/home/home.view.dart';
import 'package:nsw_app/pages/notification/notificationpage.dart';
import 'package:nsw_app/pages/profile/profilepage.dart';
import 'package:nsw_app/pages/scanQR/scanQRpage.dart';
import 'package:nsw_app/pages/track_status/track_status.view.dart';

class BottomNavBarQRScan extends StatefulWidget {
  const BottomNavBarQRScan({Key? key}) : super(key: key);

  @override
  State<BottomNavBarQRScan> createState() => _BottomNavBarQRScanState();
}

class _BottomNavBarQRScanState extends State<BottomNavBarQRScan> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    TrackStatusPage(),
    QRScanner(),
    NotificationPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = QRScanner();
  int currentTab = 5;
  final List<Widget> screens = [
    HomePage(),
    TrackStatusPage(),
    NotificationPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      // body: Center(
      //   child: _widgetOptions.elementAt(_selectedIndex),
      // ),
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
                          currentScreen = HomePage();
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
                          currentScreen = TrackStatusPage();
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
                          currentScreen = ProfilePage();
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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BottomNavBarQRScan(),
            ),
          );
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
