// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nsw_app/api/api_login.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/model/login.user.Json.dart';
import 'package:nsw_app/model/user.dart';
import 'package:nsw_app/pages/login/login.view.dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key, required this.loginDto}) : super(key: key);

  final LoginDto loginDto;

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _formLoginKey = GlobalKey<FormState>();
  late LoginDto loginDto;

  String username = "";
  String password = "";
  Logger logger = Logger();
  var obscureText = true;
  bool isIOS = false;
  bool light = false;

  @override
  initState() {
    super.initState();
    setState(() {
      loginDto = widget.loginDto;
      if (User.instance.prefsUsername != null) {
        light = true;
      } else {
        light = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
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
                          height: MediaQuery.of(context).size.height / 8,
                        ),
                        Image.asset(
                          loginDto.imagePathLogo,
                          width: MediaQuery.of(context).size.width / 3,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 15,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: double.infinity,
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                      child: Form(
                        key: _formLoginKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 50,
                            ),
                            Text(
                              loginDto.usernameText,
                              style: Config.instance.f16normal,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 10.0,
                              ),
                              child: TextFormField(
                                initialValue: User.instance.prefsUsername ??
                                    User.instance.prefsUsername,
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return;
                                  }
                                  return null;
                                },
                                onSaved: (_username) {
                                  setState(() {
                                    username = _username!;
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
                                  hintText: loginDto.usernameText,
                                  hintStyle: Config.instance.f14normalgrey,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 50,
                            ),
                            Text(
                              loginDto.passwordText,
                              style: Config.instance.f16normal,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 10.0,
                              ),
                              child: TextFormField(
                                obscureText: obscureText,
                                initialValue: User.instance.prefsPassword,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return;
                                  }
                                  return null;
                                },
                                onSaved: (_password) {
                                  setState(() {
                                    password = _password!;
                                  });
                                },
                                decoration: InputDecoration(
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        obscureText = !obscureText;
                                      });
                                    },
                                    child: obscureText
                                        ? Icon(
                                            Icons.visibility_off,
                                            color: Colors.grey,
                                          )
                                        : Icon(
                                            Icons.visibility,
                                            color: Colors.grey,
                                          ),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.lock_rounded,
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
                                  hintText: loginDto.passwordText,
                                  hintStyle: Config.instance.f14normalgrey,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 50,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor:
                                    const Color.fromRGBO(19, 71, 154, 1),
                                minimumSize: const Size.fromHeight(50),
                              ),
                              child: Text(
                                loginDto.loginText,
                                style: Config.instance.f16semiboldwhite,
                              ),
                              onPressed: () async {
                                if (_formLoginKey.currentState!.validate()) {
                                  _formLoginKey.currentState!.save();
                                }
                                userData userdata =
                                    await loginApi(username, password);
                                setState(
                                  () {
                                    User.instance.prefix =
                                        userdata.info?.prefix;
                                    User.instance.displayName =
                                        userdata.info?.displayName;
                                  },
                                ); // set value userData
                                if (username == "setpin") {
                                  return _handleonPressedSetpin(); //Navigate to Setpin page
                                }
                                if (username == "resetpin") {
                                  return _handleonPressedResetpin(); //Navigate to Resetpin page
                                }
                                if (userdata.resCode == 97) {
                                  logger.d(
                                    "Login Failed Wrong Username/Password",
                                  );
                                  return _handleWrongUser(); //Wrong is called
                                }
                                if (userdata.resCode == 99) {
                                  logger.d(
                                    "Login Failed Missing Username/Password",
                                  );
                                  return _handleMissingUser(); //Missing is called
                                }
                                if (userdata.resCode == 98) {
                                  logger.d(
                                    "Login Failed No user founded",
                                  );
                                  return _handleNoUserFound(); //No user exists
                                } else {
                                  logger.d(
                                    "Login Success!!!\n"
                                    "username : $username\n"
                                    "password : $password",
                                  );
                                  if (light == true) {
                                    SharedPreferences prefs =
                                        await SharedPreferences.getInstance();
                                    prefs.setString('prefsUsername', username);
                                    prefs.setString('prefsPassword', password);
                                    logger.d(
                                      "Remember Success!!!\n"
                                      "Remember Info\n"
                                      "username : $username\n"
                                      "password : $password",
                                    ); //Check light status.
                                  }
                                  if (light == false) {
                                    User.instance.clear();
                                  }
                                  return _handleonPressedSuccess();
                                }
                              },
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Switch(
                                      value: light,
                                      activeColor:
                                          Color.fromRGBO(235, 158, 0, 1),
                                      onChanged: (bool value) async {
                                        // This is called when the user toggles the switch.
                                        setState(() {
                                          light = value;
                                        });
                                        logger.d("Remember Switch : $light");
                                        //Check light status.
                                      },
                                    ),
                                    Text(
                                      loginDto.rememberUserText,
                                      style: Config.instance.f16normalprimary,
                                    ),
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {
                                    _handleonPressedForgotPassword();
                                  },
                                  child: Text(
                                    loginDto.forgetPassText,
                                    style: Config.instance.f16normalyellow,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        loginDto.registerText,
                        style: Config.instance.f16normalprimary,
                      ),
                      TextButton(
                        onPressed: () {
                          _handleonPressedRegister();
                        },
                        child: Text(
                          loginDto.registerText,
                          style: Config.instance.f16normalyellow,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _handleonPressedForgotPassword() {
    loginDto.onPressedForgotPassword.call();
  }

  _handleonPressedRegister() {
    loginDto.onPressedRegister.call();
  }

  _handleonPressedResetpin() {
    loginDto.onPressedResetPin.call();
  }

  _handleonPressedSetpin() {
    loginDto.onPressedSetPin.call();
  }

  _handleonPressedSuccess() {
    loginDto.onPressedSuccess.call();
  }

  _handleMissingUser() {
    loginDto.missingUserValidate.call();
  }

  _handleWrongUser() {
    loginDto.wrongUserValidate.call();
  }

  _handleNoUserFound() {
    loginDto.noUserValidate.call();
  }
}
