// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, use_build_context_synchronously, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/resetpin_username/resetpinUsername.view.dto.dart';

class ResetPinUsernameView extends StatefulWidget {
  const ResetPinUsernameView({Key? key, required this.resetPinUsernameDto})
      : super(key: key);

  final ResetPinUsernameDto resetPinUsernameDto;

  @override
  State<ResetPinUsernameView> createState() => _ResetPinUsernameViewState();
}

class _ResetPinUsernameViewState extends State<ResetPinUsernameView> {
  final GlobalKey<FormState> _UsernameKey = GlobalKey<FormState>();
  late ResetPinUsernameDto resetPinUsernameDto;
  var username;

  @override
  void initState() {
    super.initState();
    setState(() {
      resetPinUsernameDto = widget.resetPinUsernameDto;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  resetPinUsernameDto.imagePathResetPinBGtop,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        resetPinUsernameDto.imagePathResetPin,
                        width: MediaQuery.of(context).size.width / 1.7,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: Text(
                        resetPinUsernameDto.topicText,
                        style: Config.instance.f16normalblack,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            resetPinUsernameDto.usernameText,
                            style: Config.instance.f14normalgrey,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Form(
                              key: _UsernameKey,
                              child: SizedBox(
                                height: 60,
                                child: TextFormField(
                                  textAlignVertical: TextAlignVertical.bottom,
                                  validator: (username) {
                                    if (username == null || username.isEmpty) {
                                      return "ชื่อผู้ใช้งานของท่านไม่ถูกต้อง";
                                    }
                                    return null;
                                  },
                                  onSaved: (_username) {
                                    setState(() {
                                      username = _username;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.person_rounded,
                                      color: Colors.grey,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1.0),
                                    ),
                                    hintText: 'ชื่อผู้ใช้งาน',
                                    hintStyle: Config.instance.f16normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "ย้อนกลับ",
                                  style: Config.instance.f16normal,
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_UsernameKey.currentState!.validate()) {
                                      _UsernameKey.currentState!.save();
                                    }
                                    print("username");
                                    print(username);
                                    setState(() {}); // set value userData
                                    if (username == null) {
                                      return;
                                    } else {
                                      HandleonPressedPassword();
                                    }
                                  },
                                  child: Text(
                                    "ถัดไป",
                                    style: Config.instance.f16semiboldwhite,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  resetPinUsernameDto.imagePathResetPinBGbottom,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  HandleonPressedPassword() {
    resetPinUsernameDto.onPressedPassword.call();
  }
}
