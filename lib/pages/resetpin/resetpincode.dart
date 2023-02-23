import 'package:flutter/material.dart';
import 'package:nsw_app/component/bottom_navigation_bar.dart';
import 'package:nsw_app/pages/login/login.dart';
import 'package:nsw_app/pages/resetpin/resetpincode.view.dart';
import 'package:nsw_app/pages/resetpin/resetpincode.view.dto.dart';
import 'package:nsw_app/pages/resetpin_username/resetpinUsername.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResetPincode(),
    );
  }
}

class ResetPincode extends StatefulWidget {
  const ResetPincode({Key? key}) : super(key: key);

  @override
  State<ResetPincode> createState() => _ResetPincodeState();
}

class _ResetPincodeState extends State<ResetPincode> {
  late ResetpincodeDto resetPincodeDto;

  @override
  void initState() {
    super.initState();
    resetPincodeDto = ResetpincodeDto(
      onPressedNavigateResetUsername: _HandleonPressedNavigateResetUsername,
      onPressedCancelResetPin: _HandleonPressedCancel,
      onPressedSkip: _HandleonPressedSkip,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResetPincodeView(
      resetpincodeDto: resetPincodeDto,
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

  _HandleonPressedSkip() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BottomNavBar(),
      ),
    );
  }
}
