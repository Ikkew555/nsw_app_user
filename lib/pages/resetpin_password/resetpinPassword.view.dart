// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, use_build_context_synchronously, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/resetpin_password/resetpinPassword.view.dto.dart';

class ResetPinPasswordView extends StatefulWidget {
  const ResetPinPasswordView({Key? key, required this.resetPinPasswordDto})
      : super(key: key);

  final ResetPinPasswordDto resetPinPasswordDto;

  @override
  State<ResetPinPasswordView> createState() => _ResetPinPasswordViewState();
}

class _ResetPinPasswordViewState extends State<ResetPinPasswordView> {
  final GlobalKey<FormState> _PasswordKey = GlobalKey<FormState>();
  late ResetPinPasswordDto resetPinPasswordDto;
  var password;

  @override
  void initState() {
    super.initState();
    setState(() {
      resetPinPasswordDto = widget.resetPinPasswordDto;
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
                  resetPinPasswordDto.imagePathResetPinBGtop,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        resetPinPasswordDto.imagePathResetPin,
                        width: MediaQuery.of(context).size.width / 1.7,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: Text(
                        resetPinPasswordDto.topicText,
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
                            resetPinPasswordDto.passwordText,
                            style: Config.instance.f14normalgrey,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Form(
                              key: _PasswordKey,
                              child: SizedBox(
                                height: 60,
                                child: TextFormField(
                                  textAlignVertical: TextAlignVertical.bottom,
                                  validator: (username) {
                                    if (username == null || username.isEmpty) {
                                      return "รหัสผ่านไม่ถูกต้อง";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.lock,
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
                                    hintText: 'รหัสผ่าน',
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
                                    setState(() {}); // set value userData
                                    if (password == null) {
                                      return;
                                    } else {
                                      return;
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
                  resetPinPasswordDto.imagePathResetPinBGbottom,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
