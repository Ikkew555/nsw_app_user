import 'package:flutter/material.dart';
import 'package:nsw_app/pages/login/login.dart';
import 'package:nsw_app/pages/pincode/pincode.view.dart';
import 'package:nsw_app/pages/pincode/pincode.view.dto.dart';
import 'package:nsw_app/pages/resetpin_username/resetpinUsername.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Pincode(),
    );
  }
}

class Pincode extends StatefulWidget {
  const Pincode({Key? key}) : super(key: key);

  @override
  State<Pincode> createState() => _PincodeState();
}

class _PincodeState extends State<Pincode> {
  late PincodeDto pincodeDto;

  @override
  void initState() {
    super.initState();
    pincodeDto = PincodeDto(
      onPressedNavigateResetUsername: _HandleonPressedNavigateResetUsername,
      onPressedCancelResetPin: _HandleonPressedCancel,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PincodeView(
      pincodeDto: pincodeDto,
    );
  }

  _HandleonPressedNavigateResetUsername() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResetPinUsername(),
      ),
    );
  }

  _HandleonPressedCancel() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Login(),
      ),
    );
  }
}
