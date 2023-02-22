// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/pincode/pincode.view.dto.dart';

class DigitHolder extends StatefulWidget {
  final int selectedIndex;
  final int index;
  final String code;
  const DigitHolder({
    required this.selectedIndex,
    Key? key,
    required this.width,
    required this.index,
    required this.code,
  }) : super(key: key);

  final double width;

  @override
  State<DigitHolder> createState() => _DigitHolderState();
}

class _DigitHolderState extends State<DigitHolder> {
  late PincodeDto pincodeDto;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 30,
      width: 30,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
        boxShadow: [
          BoxShadow(
            color: widget.index == widget.selectedIndex
                ? Config.instance.primarycolor
                : Colors.transparent,
            offset: Offset(0, 0),
            // spreadRadius: 1.5,
            // blurRadius: 2,
          ),
        ],
      ),
      child: widget.code.length > widget.index
          ? Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                color: Config.instance.primarycolor,
                shape: BoxShape.circle,
              ),
            )
          : Container(),
    );
  }
}
