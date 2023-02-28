// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/model/user.dart';
import 'package:nsw_app/pages/splashscreen/splashscreen.view.dto.dart';
import 'dart:io' show Platform;

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key, required this.splashScreenDto})
      : super(key: key);

  final SplashScreenDto splashScreenDto;

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  late SplashScreenDto splashScreenDto;
  bool isIOS = false;
  Logger logger = Logger();

  @override
  void initState() {
    super.initState();
    try {
      if (Platform.isIOS || Platform.isMacOS) {
        isIOS = true;
      }
    } catch (err) {
      isIOS = false;
    }
    setState(
      () {
        splashScreenDto = widget.splashScreenDto;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromRGBO(19, 71, 154, 1),
              Color.fromRGBO(7, 20, 124, 1)
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 8,
            ),
            Image.asset(
              splashScreenDto.imagePathLogo,
              width: MediaQuery.of(context).size.width / 2,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color.fromRGBO(19, 71, 154, 1),
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.white,
                ),
                child: Text(
                  splashScreenDto.loginText,
                  style: Config.instance.f16semiboldprimary,
                ),
                onPressed: () {
                  HandleonPressedLogin();
                },
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 50,
            ),
            TextButton(
              onPressed: () {
                HandleonPressedRegister();
              },
              child: Text(
                splashScreenDto.registerText,
                style: Config.instance.f16semiboldwhite,
              ),
            ),
          ],
        ),
      ),
    );
  }

  HandleonPressedRegister() {
    splashScreenDto.onPressedRegister.call();
  }

  HandleonPressedLogin() {
    splashScreenDto.onPressedLogin.call();
  }
}
