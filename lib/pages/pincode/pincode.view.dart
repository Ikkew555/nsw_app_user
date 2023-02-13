// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/pincode/pincode.view.dto.dart';
import 'package:nsw_app/pages/pincode/widgets/popupSuccessfull.dart';

class PincodeView extends StatefulWidget {
  const PincodeView({Key? key, required this.pincodeDto}) : super(key: key);

  final PincodeDto pincodeDto;

  @override
  State<PincodeView> createState() => _PincodeViewState();
}

class _PincodeViewState extends State<PincodeView> {
  late PincodeDto pincodeDto;
  double pincodeSize = 30;
  double numpadSize = 70;
  int pinDigit = 6;
  List<Color> pinColorList = [];
  // Color p
  List<int> pinList = [];
  late String firstName;
  late String lastName;
  List<Widget> pinDigitWidgetList = [];
  List<Widget> numpadWidgetRow = [];
  Color pinDigitBeforeSubmitColor = const Color.fromARGB(255, 246, 246, 246);
  Color pinDigitAfterSubmitColor = const Color.fromARGB(255, 180, 180, 180);

  @override
  void initState() {
    initialPinCircle();
    setNumPad();
    super.initState();
    setState(() {
      pincodeDto = widget.pincodeDto;
    });
  }

  void initialPinCircle() {
    pinColorList.clear();
    for (int i = 0; i < pinDigit; i++) {
      setState(() {
        pinColorList.add(pinDigitBeforeSubmitColor);
      });
    }
    setPinWidget();
  }

  void setPinWidget() {
    pinDigitWidgetList.clear();
    for (int i = 0; i < pinDigit; i++) {
      Widget pinCircle = Container(
        width: pincodeSize,
        height: pincodeSize,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          // color: pinColorList[i],
          border: Border.all(
            color: Colors.black45,
            width: 1,
          ),
        ),
      );
      pinDigitWidgetList.add(pinCircle);
    }
  }

  void setPin(int pinNumber) {
    if (pinList.length < pinDigit) {
      setState(() {
        pinList.add(pinNumber);
        int lastIndexOfPin = pinList.length - 1;
        pinColorList[lastIndexOfPin] = pinDigitAfterSubmitColor;
      });
      setPinWidget();
    }
  }

  void delPin() {
    if (pinList.isNotEmpty) {
      int lastIndexOfPin = pinList.length - 1;
      setState(() {
        pinList.removeLast();
        pinColorList[lastIndexOfPin] = pinDigitBeforeSubmitColor;
      });
      setPinWidget();
    }
  }

  void resetPin() {
    setState(() {
      pinList.clear();
    });
    initialPinCircle();
  }

  void setNumPad() {
    List<Widget> numpadRow = [];
    int number = 0;
    Widget sizeBox = const SizedBox(
      height: 10,
    );
    for (int row = 0; row < 3; row++) {
      for (int col = 0; col < 3; col++) {
        number++;
        String numberText = number.toString();
        Widget numberButton = SizedBox(
          width: numpadSize,
          height: numpadSize,
          child: ElevatedButton(
            onPressed: () {
              setPin(
                int.parse(numberText),
              );
            },
            style: ElevatedButton.styleFrom(
              side: const BorderSide(
                width: 1.0,
                color: Colors.black45,
              ),
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: Center(
              child: Text(
                numberText,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.black45,
                ),
              ),
            ),
          ),
        );
        numpadRow.add(numberButton);
      }

      Widget numpadWidgetRow = Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: numpadRow,
      );
      this.numpadWidgetRow.addAll(
        [
          numpadWidgetRow,
          sizeBox,
        ],
      );
      setState(() {
        numpadRow = [];
      });
    }
    Widget numpadWidgetLastRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: numpadSize,
          height: numpadSize,
        ),
        SizedBox(
          width: numpadSize,
          height: numpadSize,
          child: ElevatedButton(
            onPressed: () {
              setPin(
                0,
              );
            },
            style: ElevatedButton.styleFrom(
              side: const BorderSide(
                width: 1.0,
                color: Colors.black45,
              ),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: const Center(
              child: Text(
                "0",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black45,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: numpadSize,
          height: numpadSize,
          child: ElevatedButton(
            onPressed: () {
              delPin();
            },
            style: ElevatedButton.styleFrom(
              side: const BorderSide(
                width: 1.0,
                color: Colors.black45,
              ),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.backspace_outlined,
                color: Colors.black45,
              ),
            ),
          ),
        )
      ],
    );
    this.numpadWidgetRow.addAll(
      [
        numpadWidgetLastRow,
        // sizeBox,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
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
          Expanded(
            child: SingleChildScrollView(
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
                          // color: Colors.green,
                          height: MediaQuery.of(context).size.height / 20,
                        ),
                        Image.asset(
                          "assets/logo_nsw.png",
                          width: MediaQuery.of(context).size.width / 3,
                        ),
                        Container(
                          // color: Colors.green,
                          height: MediaQuery.of(context).size.height / 20,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.green,
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Text(
                    "สำหรับการเข้าสู่ระบบครั้งแรก",
                    style: GoogleFonts.notoSansThai(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    "กรุณาตั้งรหัสความปลอดภัย (PIN CODE)",
                    style: GoogleFonts.notoSansThai(
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: pinDigitWidgetList,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: numpadWidgetRow,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: TextButton(
                            onPressed: () {
                              resetPin();
                              HandleonPressedCancel();
                            },
                            child: Text(
                              "ยกเลิก",
                              style: GoogleFonts.notoSansThai(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(19, 71, 154, 1),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: TextButton(
                            onPressed: () {
                              // showDialog(
                              //   context: context,
                              //   builder: (_) => ImageDialog(),
                              // );
                              HandleonPressedSkip();
                            },
                            child: Text(
                              "ข้าม",
                              style: GoogleFonts.notoSansThai(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black45,
                                ),
                              ),
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
    );
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
