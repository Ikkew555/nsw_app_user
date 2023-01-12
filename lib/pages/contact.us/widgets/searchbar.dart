// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey, blurRadius: 2.0,
              offset: Offset(1, 2), // Shadow position
            ),
          ],
        ),
        child: TextField(
          decoration: InputDecoration(
            labelText: "สาขาเจ้าท่าทั้งหมด",
            labelStyle: Config.instance.f16normal,
            prefixIcon: Icon(Icons.location_on_outlined),
            suffixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: Colors.white, width: 1.0),
            ),
          ),
        ),
      ),
    );
  }
}
