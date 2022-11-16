import 'package:flutter/material.dart';
// import 'package:nsw_app/pages/homepage.dart';
import 'package:nsw_app/pages/splashpage.dart';
import 'package:nsw_app/pages/track_statuspage.dart';
// import 'package:nsw_app/component/notification_btn.dart';
// import 'package:nsw_app/pages/splashpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const SplashPage(),
    );
  }
}
