import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/home/home.dart';
import 'package:nsw_app/pages/notification/notification.dart';
import 'package:nsw_app/pages/profile/profile.dart';
import 'package:nsw_app/pages/scanQR/scanqr.dart';
import 'package:nsw_app/pages/track_status/track_status.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _buildTheme(),
      home: BottomNavBarProfile(),
    );
  }
}

ThemeData _buildTheme() {
  final base = ThemeData.light();
  return base.copyWith(
      primaryIconTheme: base.iconTheme.copyWith(color: Colors.black));
}

class BottomNavBarProfile extends StatefulWidget {
  const BottomNavBarProfile({Key? key}) : super(key: key);

  @override
  State<BottomNavBarProfile> createState() => _BottomNavBarProfileState();
}

class _BottomNavBarProfileState extends State<BottomNavBarProfile> {
  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 4);

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
