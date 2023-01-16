import 'package:flutter/material.dart';
import 'package:nsw_app/pages/splashscreen/splashscreen.dart';
import 'package:nsw_app/pages/splashscreen/splashscreen.view.dart';

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
      home: const SplashScreenView(),
    );
  }
}
