// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nsw_app/component/bottom_navigation_bar.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/model/user.dart';
import 'package:nsw_app/pages/pincode/pincode.view.dto.dart';
import 'package:nsw_app/pages/pincode/widgets/digitHolder.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PincodeView extends StatefulWidget {
  const PincodeView({Key? key, required this.pincodeDto}) : super(key: key);

  final PincodeDto pincodeDto;

  @override
  State<PincodeView> createState() => _PincodeViewState();
}

class _PincodeViewState extends State<PincodeView> {
  late PincodeDto pincodeDto;
  var selectedindex = 0;
  String code = '';
  Logger logger = Logger();

  @override
  void initState() {
    super.initState();
    setState(() {
      pincodeDto = widget.pincodeDto;
    });
    PrefPin() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var prefsCode = prefs.getString('prefsCode');
      User.instance.prefsCode = prefsCode;
      logger.d(
        "Code is ${User.instance.prefsCode}\n"
        "Code.length ${code.length.toString()}",
      );
    }

    PrefPin();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w500,
      color: Colors.black.withBlue(40),
    );
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    Logger logger = Logger();
    // logger.d("Code is $code");
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        leading: Icon(Icons.keyboard_backspace_outlined),
      ),
      body: Column(
        children: [
          User.instance.prefsCode == null
              ? Expanded(
                  child: SizedBox(
                    height: height,
                    width: width,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
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
                                height: MediaQuery.of(context).size.height / 25,
                              ),
                              Image.asset(
                                "assets/logo_nsw.png",
                                width: MediaQuery.of(context).size.width / 4,
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height / 25,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  "สำหรับการเข้าสู่ระบบครั้งแรก",
                                  style: Config.instance.f12normalgrey,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  "กรุณาใส่รหัสความปลอดภัย (PIN CODE)",
                                  style: Config.instance.f16semiboldblack,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DigitHolder(
                                      width: width,
                                      index: 0,
                                      selectedIndex: selectedindex,
                                      code: code),
                                  DigitHolder(
                                      width: width,
                                      index: 1,
                                      selectedIndex: selectedindex,
                                      code: code),
                                  DigitHolder(
                                      width: width,
                                      index: 2,
                                      selectedIndex: selectedindex,
                                      code: code),
                                  DigitHolder(
                                      width: width,
                                      index: 3,
                                      selectedIndex: selectedindex,
                                      code: code),
                                  DigitHolder(
                                      width: width,
                                      index: 4,
                                      selectedIndex: selectedindex,
                                      code: code),
                                  DigitHolder(
                                      width: width,
                                      index: 5,
                                      selectedIndex: selectedindex,
                                      code: code),
                                ],
                              )),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                              ),
                                              onPressed: () {
                                                addDigit(1);
                                              },
                                              child:
                                                  Text('1', style: textStyle)),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                              ),
                                              onPressed: () {
                                                addDigit(2);
                                              },
                                              child:
                                                  Text('2', style: textStyle)),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                              ),
                                              onPressed: () {
                                                addDigit(3);
                                              },
                                              child:
                                                  Text('3', style: textStyle)),
                                        ),
                                      ],
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                              ),
                                              onPressed: () {
                                                addDigit(4);
                                              },
                                              child:
                                                  Text('4', style: textStyle)),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                              ),
                                              onPressed: () {
                                                addDigit(5);
                                              },
                                              child:
                                                  Text('5', style: textStyle)),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                              ),
                                              onPressed: () {
                                                addDigit(6);
                                              },
                                              child:
                                                  Text('6', style: textStyle)),
                                        ),
                                      ],
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                              ),
                                              onPressed: () {
                                                addDigit(7);
                                              },
                                              child:
                                                  Text('7', style: textStyle)),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                              ),
                                              onPressed: () {
                                                addDigit(8);
                                              },
                                              child:
                                                  Text('8', style: textStyle)),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                              ),
                                              onPressed: () {
                                                addDigit(9);
                                              },
                                              child:
                                                  Text('9', style: textStyle)),
                                        ),
                                      ],
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: SizedBox(
                                          height: double.maxFinite,
                                          child: Container(),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: SizedBox(
                                          height: double.maxFinite,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                              ),
                                              onPressed: () {
                                                addDigit(0);
                                              },
                                              child:
                                                  Text('0', style: textStyle)),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: SizedBox(
                                          height: double.maxFinite,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              elevation: 0,
                                            ),
                                            onPressed: () {
                                              backspace();
                                            },
                                            child: Icon(
                                                Icons.backspace_outlined,
                                                color:
                                                    Colors.black.withBlue(40),
                                                size: 30),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Container(),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: TextButton(
                                          onPressed: () {
                                            HandleonPressedCancel();
                                          },
                                          child: Text(
                                            "ยกเลิก",
                                            style: Config
                                                .instance.f14normalprimary,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: TextButton(
                                          onPressed: () {
                                            User.instance.clear();
                                            logger.d(
                                              "Remembered Info\n"
                                              "prefsUsername : ${User.instance.prefsUsername}\n"
                                              "prefsPassword : ${User.instance.prefsPassword}\n"
                                              "prefsCode : ${User.instance.prefsCode}",
                                            );
                                          },
                                          child: Text(
                                            "ข้าม",
                                            style:
                                                Config.instance.f14normalgrey,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : Expanded(
                  child: SizedBox(
                    height: height,
                    width: width,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
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
                                height: MediaQuery.of(context).size.height / 25,
                              ),
                              Image.asset(
                                "assets/logo_nsw.png",
                                width: MediaQuery.of(context).size.width / 4,
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height / 25,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  "กรุณาใส่รหัสความปลอดภัย (PIN CODE)",
                                  style: Config.instance.f16semiboldblack,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DigitHolder(
                                      width: width,
                                      index: 0,
                                      selectedIndex: selectedindex,
                                      code: code),
                                  DigitHolder(
                                      width: width,
                                      index: 1,
                                      selectedIndex: selectedindex,
                                      code: code),
                                  DigitHolder(
                                      width: width,
                                      index: 2,
                                      selectedIndex: selectedindex,
                                      code: code),
                                  DigitHolder(
                                      width: width,
                                      index: 3,
                                      selectedIndex: selectedindex,
                                      code: code),
                                  DigitHolder(
                                      width: width,
                                      index: 4,
                                      selectedIndex: selectedindex,
                                      code: code),
                                  DigitHolder(
                                      width: width,
                                      index: 5,
                                      selectedIndex: selectedindex,
                                      code: code),
                                ],
                              )),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                              ),
                                              onPressed: () {
                                                addDigit(1);
                                              },
                                              child:
                                                  Text('1', style: textStyle)),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                              ),
                                              onPressed: () {
                                                addDigit(2);
                                              },
                                              child:
                                                  Text('2', style: textStyle)),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                              ),
                                              onPressed: () {
                                                addDigit(3);
                                              },
                                              child:
                                                  Text('3', style: textStyle)),
                                        ),
                                      ],
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                              ),
                                              onPressed: () {
                                                addDigit(4);
                                              },
                                              child:
                                                  Text('4', style: textStyle)),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                              ),
                                              onPressed: () {
                                                addDigit(5);
                                              },
                                              child:
                                                  Text('5', style: textStyle)),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                              ),
                                              onPressed: () {
                                                addDigit(6);
                                              },
                                              child:
                                                  Text('6', style: textStyle)),
                                        ),
                                      ],
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                              ),
                                              onPressed: () {
                                                addDigit(7);
                                              },
                                              child:
                                                  Text('7', style: textStyle)),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                              ),
                                              onPressed: () {
                                                addDigit(8);
                                              },
                                              child:
                                                  Text('8', style: textStyle)),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                              ),
                                              onPressed: () {
                                                addDigit(9);
                                              },
                                              child:
                                                  Text('9', style: textStyle)),
                                        ),
                                      ],
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: SizedBox(
                                          height: double.maxFinite,
                                          child: Container(),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: SizedBox(
                                          height: double.maxFinite,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                              ),
                                              onPressed: () {
                                                addDigit(0);
                                              },
                                              child:
                                                  Text('0', style: textStyle)),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: SizedBox(
                                          height: double.maxFinite,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              elevation: 0,
                                            ),
                                            onPressed: () {
                                              backspace();
                                            },
                                            child: Icon(
                                                Icons.backspace_outlined,
                                                color:
                                                    Colors.black.withBlue(40),
                                                size: 30),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Container(),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: TextButton(
                                          onPressed: () {
                                            HandleonPressedCancel();
                                          },
                                          child: Text(
                                            "ยกเลิก",
                                            style: Config
                                                .instance.f14normalprimary,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: TextButton(
                                          onPressed: () {
                                            User.instance.clear();
                                            logger.d(
                                              "Remembered Info\n"
                                              "prefsUsername : ${User.instance.prefsUsername}\n"
                                              "prefsPassword : ${User.instance.prefsPassword}\n"
                                              "prefsCode : ${User.instance.prefsCode}",
                                            );
                                          },
                                          child: Text(
                                            "ข้าม",
                                            style:
                                                Config.instance.f14normalgrey,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  addDigit(int digit) {
    if (code.length > 5) {
      return;
    }
    setState(() {
      code = code + digit.toString();
      print('Code is $code');
      selectedindex = code.length;
    });
    resetpin() async {
      if (code.length == 6 && code != User.instance.prefsCode) {
        Future<void> _dialogBuilder(BuildContext context) {
          return showDialog<void>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  'รหัสความปลอดภัยไม่ถูกต้อง',
                  style: Config.instance.f16boldprimary,
                ),
                content: Text(
                  'กรุณากรอกรหัสที่ถูกต้อง หรือ รีเซ้ทรหัสความปลอดภัย',
                  style: Config.instance.f16normalblack,
                ),
                actions: <Widget>[
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    child: Text(
                      'ตกลง',
                      style: Config.instance.f16normalprimary,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        }

        setState(() {
          // resetpin addDigits
          code = code.substring(0, code.length - code.length);
          selectedindex = code.length;
        });
        return _dialogBuilder(context);
      }
      if (User.instance.prefsCode == null) {
        // first time setPin
        if (code.length == 6) {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          var prefsCode = prefs.setString('prefsCode', code);
          setState(() {});
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BottomNavBar(),
            ),
          );
        }
      }
      if (code == User.instance.prefsCode) {
        // Check Pin
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BottomNavBar(),
          ),
        );
        setState(() {
          // resetpin addDigits
          code = code.substring(0, code.length - code.length);
          selectedindex = code.length;
        });
        logger.d("Pincode match !!!");
      } else {
        logger.d("Pincode doesn't match!!!\n"
            "Code is $code\n"
            "prefsCode is ${User.instance.prefsCode}");
      }
    }

    resetpin();
  }

  backspace() {
    if (code.isEmpty) {
      return;
    }
    setState(() {
      code = code.substring(0, code.length - 1);
      selectedindex = code.length;
    });
  }

  HandleonPressedResetPin() {
    pincodeDto.onPressedNavigateResetUsername.call();
  }

  HandleonPressedCancel() {
    pincodeDto.onPressedCancelResetPin.call();
  }

  HandleonPressedSkip() {
    pincodeDto.onPressedSkip.call();
  }
}
