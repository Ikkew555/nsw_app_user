// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/contact_us/widgets/location.card.dart';
import 'package:nsw_app/pages/contact_us/widgets/searchbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContactUsView(),
    );
  }
}

class ContactUsView extends StatefulWidget {
  const ContactUsView({Key? key}) : super(key: key);

  @override
  State<ContactUsView> createState() => _ContactUsViewState();
}

class _ContactUsViewState extends State<ContactUsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SearchBar(),
            LocationCard(),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
              indent: 110,
              endIndent: 110,
              color: Color.fromRGBO(179, 193, 206, 1),
            ),
          ],
        ),
      ),
    );
  }
}
