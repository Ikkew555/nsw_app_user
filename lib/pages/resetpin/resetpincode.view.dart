// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/pincode/widgets/popupSuccessfull.dart';
import 'package:nsw_app/pages/resetpin/resetpincode.view.dto.dart';

class ResetPincodeView extends StatefulWidget {
  const ResetPincodeView({Key? key, required this.resetpincodeDto})
      : super(key: key);

  final ResetpincodeDto resetpincodeDto;

  @override
  State<ResetPincodeView> createState() => _ResetPincodeViewState();
}

class _ResetPincodeViewState extends State<ResetPincodeView> {
  late ResetpincodeDto resetpincodeDto;
  var selectedindex = 0;
  String code = '';
  Color pinDigitBeforeSubmitColor = const Color.fromARGB(255, 246, 246, 246);
  Color pinDigitAfterSubmitColor = const Color.fromARGB(255, 180, 180, 180);

  @override
  void initState() {
    super.initState();
    setState(() {
      resetpincodeDto = widget.resetpincodeDto;
    });
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
    print("Code is $code");
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
          SizedBox(
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
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          "สำหรับการเข้าสู่ระบบครั้งแรก",
                          style: Config.instance.f12normalgrey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "กรุณายืนยันรหัสความปลอดภัย (PIN CODE)",
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
                  flex: 5,
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
                                      child: Text('1', style: textStyle)),
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
                                      child: Text('2', style: textStyle)),
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
                                      child: Text('3', style: textStyle)),
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
                                      child: Text('4', style: textStyle)),
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
                                      child: Text('5', style: textStyle)),
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
                                      child: Text('6', style: textStyle)),
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
                                      child: Text('7', style: textStyle)),
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
                                      child: Text('8', style: textStyle)),
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
                                      child: Text('9', style: textStyle)),
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
                                      child: Text('0', style: textStyle)),
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
                                    child: Icon(Icons.backspace_outlined,
                                        color: Colors.black.withBlue(40),
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
                                    style: Config.instance.f14normalprimary,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: TextButton(
                                  onPressed: () {
                                    HandleonPressedResetPin();
                                  },
                                  child: Text(
                                    "ลืม Pin ?",
                                    style: Config.instance.f14normalgrey,
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
  }

  backspace() {
    if (code.length == 0) {
      return;
    }
    setState(() {
      code = code.substring(0, code.length - 1);
      selectedindex = code.length;
    });
  }

  HandleonPressedResetPin() {
    resetpincodeDto.onPressedNavigateResetUsername.call();
  }

  HandleonPressedCancel() {
    resetpincodeDto.onPressedCancelResetPin.call();
  }

  HandleonPressedSkip() {
    resetpincodeDto.onPressedSkip.call();
  }
}

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
