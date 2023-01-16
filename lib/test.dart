// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:nsw_app/pages/login/login.dart';
import 'package:nsw_app/pages/login/login.view.dart';
import 'package:nsw_app/pages/profile/profilepage.dart';
import 'package:nsw_app/pages/track_status/track_status.view.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _buildTheme(),
      home: MainSrc(),
    );
  }
}

ThemeData _buildTheme() {
  final base = ThemeData.light();
  return base.copyWith(
      primaryIconTheme: base.iconTheme.copyWith(color: Colors.black));
}

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _counter = 0;
//   bool showElevatedButtonBadge = true;

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         bottomNavigationBar: _bottomNavigationBar(),
//         appBar: AppBar(
//           leading: Badge(
//             position: BadgePosition.topEnd(top: 10, end: 10),
//             badgeContent: null,
//             child: IconButton(
//               icon: Icon(Icons.menu),
//               onPressed: () {},
//             ),
//           ),
//           title: Text('Badge Demo', style: TextStyle(color: Colors.black)),
//           backgroundColor: Colors.white,
//           actions: <Widget>[
//             _shoppingCartBadge(),
//           ],
//           bottom: _tabBar(),
//         ),
//         body: Column(
//           children: <Widget>[
//             _addRemoveCartButtons(),
//             _textBadge(),
//             _directionalBadge(),
//             _elevatedButtonBadge(),
//             _chipWithZeroPadding(),
//             expandedBadge(),
//             _badgeWithZeroPadding(),
//             _badgesWithBorder(),
//             _listView(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget expandedBadge() {
//     return Expanded(
//       child: Center(
//         child: Badge(
//           badgeContent: Text('10'),
//           child: Icon(Icons.person, size: 30),
//         ),
//       ),
//     );
//   }

//   Widget _shoppingCartBadge() {
//     return Badge(
//       position: BadgePosition.topEnd(top: 0, end: 3),
//       animationDuration: Duration(milliseconds: 300),
//       animationType: BadgeAnimationType.slide,
//       badgeContent: Text(
//         _counter.toString(),
//         style: TextStyle(color: Colors.white),
//       ),
//       child: IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
//     );
//   }

//   PreferredSizeWidget _tabBar() {
//     return TabBar(tabs: [
//       Tab(
//         icon: Badge(
//           badgeColor: Colors.blue,
//           badgeContent: Text(
//             '3',
//             style: TextStyle(color: Colors.white),
//           ),
//           child: Icon(Icons.account_balance_wallet, color: Colors.grey),
//         ),
//       ),
//       Tab(
//         icon: Badge(
//           shape: BadgeShape.square,
//           borderRadius: BorderRadius.circular(5),
//           position: BadgePosition.topEnd(top: -12, end: -20),
//           padding: EdgeInsets.all(2),
//           badgeContent: Text(
//             'NEW',
//             style: TextStyle(
//                 color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
//           ),
//           child: Text(
//             'MUSIC',
//             style: TextStyle(color: Colors.grey[600]),
//           ),
//         ),
//       ),
//     ]);
//   }

//   Widget _bottomNavigationBar() {
//     return BottomNavigationBar(
//       items: [
//         BottomNavigationBarItem(
//           label: 'Events',
//           icon: Icon(Icons.event),
//         ),
//         BottomNavigationBarItem(
//           label: 'Messages',
//           icon: Icon(Icons.message),
//         ),
//         BottomNavigationBarItem(
//           label: 'Settings',
//           icon: Badge(
//             shape: BadgeShape.circle,
//             position: BadgePosition.center(),
//             borderRadius: BorderRadius.circular(100),
//             child: Icon(Icons.settings),
//             badgeContent: Container(
//               height: 5,
//               width: 5,
//               decoration:
//                   BoxDecoration(shape: BoxShape.circle, color: Colors.white),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _addRemoveCartButtons() {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           ElevatedButton.icon(
//               onPressed: () {
//                 setState(() {
//                   _counter++;
//                 });
//               },
//               icon: Icon(Icons.add),
//               label: Text('Add to cart')),
//           ElevatedButton.icon(
//               onPressed: () {
//                 if (_counter > 0) {
//                   setState(() {
//                     _counter--;
//                   });
//                 }
//               },
//               icon: Icon(Icons.remove),
//               label: Text('Remove from cart')),
//         ],
//       ),
//     );
//   }

//   Widget _textBadge() {
//     return Padding(
//       padding: const EdgeInsets.all(20),
//       child: Badge(
//         padding: EdgeInsets.all(6),
//         gradient: LinearGradient(colors: [
//           Colors.black,
//           Colors.red,
//         ]),
//         badgeContent: Text(
//           '!',
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         position: BadgePosition.topStart(top: -15),
//         child: Text('This is a text'),
//       ),
//     );
//   }

//   Widget _elevatedButtonBadge() {
//     return Badge(
//       showBadge: showElevatedButtonBadge,
//       padding: EdgeInsets.all(8),
//       badgeColor: Colors.deepPurple,
//       badgeContent: Text(
//         '!',
//         style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//       ),
//       child: ElevatedButton(
//         onPressed: () {
//           setState(() {
//             showElevatedButtonBadge = !showElevatedButtonBadge;
//           });
//         },
//         child: Text('Raised Button'),
//       ),
//     );
//   }

//   Widget _chipWithZeroPadding() {
//     return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
//       Text('Chip with zero padding:'),
//       Chip(
//         label: Text('Hello'),
//         padding: EdgeInsets.all(0),
//       ),
//     ]);
//   }

//   Widget _badgeWithZeroPadding() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text('Badges:'),
//         for (int i = 0; i < 5; i++)
//           _getExampleBadge(padding: (i * 2).toDouble())
//       ],
//     );
//   }

//   Widget _getExampleBadge({double? padding}) {
//     return Padding(
//       padding: const EdgeInsets.all(4),
//       child: Badge(
//         badgeColor: Colors.lightBlueAccent,
//         borderRadius: BorderRadius.circular(20),
//         padding: EdgeInsets.all(padding ?? 4),
//         shape: BadgeShape.square,
//         badgeContent: Text(
//           'Hello',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//     );
//   }

//   Widget _badgesWithBorder() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 24),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Text('Badges with borders:'),
//           Badge(
//             position: BadgePosition.topEnd(top: 0, end: 2),
//             elevation: 0,
//             shape: BadgeShape.circle,
//             badgeColor: Colors.red,
//             borderSide: BorderSide(color: Colors.black),
//             child: Icon(
//               Icons.person,
//               size: 30,
//             ),
//           ),
//           Badge(
//             position: BadgePosition.topEnd(top: -5, end: -5),
//             shape: BadgeShape.square,
//             badgeColor: Colors.blue,
//             badgeContent: SizedBox(
//               height: 5,
//               width: 5,
//             ),
//             elevation: 0,
//             borderSide: BorderSide(
//               color: Colors.black,
//               width: 3,
//             ),
//             child: Icon(
//               Icons.games_outlined,
//               size: 30,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _listView() {
//     Widget _listTile(String title, String value) {
//       return ListTile(
//         dense: true,
//         title: Text(title, style: TextStyle(fontSize: 16)),
//         trailing: SizedBox(
//           width: 100,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: <Widget>[
//               Badge(
//                 elevation: 0,
//                 shape: BadgeShape.circle,
//                 padding: EdgeInsets.all(7),
//                 badgeContent: Text(
//                   value,
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 20),
//                 child: Icon(
//                   Icons.arrow_forward_ios,
//                   size: 14,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//     }

//     return Expanded(
//       child: ListView.separated(
//         itemCount: 3,
//         separatorBuilder: (BuildContext context, int index) => Divider(),
//         itemBuilder: (BuildContext context, int index) {
//           switch (index) {
//             case 0:
//               return _listTile('Messages', '2');
//             case 1:
//               return _listTile('Friends', '7');
//             case 2:
//             default:
//               return _listTile('Events', '!');
//           }
//         },
//       ),
//     );
//   }

//   Widget _directionalBadge() {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 12.0),
//       child: Badge(
//         elevation: 0,
//         position: BadgePosition.topEnd(),
//         padding: EdgeInsetsDirectional.only(end: 4),
//         badgeColor: Colors.transparent,
//         badgeContent: Icon(Icons.error, size: 16.0, color: Colors.red),
//         child: Text('This is RTL'),
//       ),
//     );
//   }
// }

class MainSrc extends StatefulWidget {
  const MainSrc({Key? key}) : super(key: key);

  @override
  State<MainSrc> createState() => _MainSrcState();
}

class _MainSrcState extends State<MainSrc> {
  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
        Login(),
        TrackStatusPage(),
        ProfilePage(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.home),
          title: ("Home"),
          activeColorPrimary: CupertinoColors.activeBlue,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            CupertinoIcons.settings,
            color: Colors.white,
          ),
          title: ("Settings"),
          activeColorPrimary: CupertinoColors.activeBlue,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.location),
          title: ("Location"),
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
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style15, // Choose the nav bar style with this property.
    );
  }
}
