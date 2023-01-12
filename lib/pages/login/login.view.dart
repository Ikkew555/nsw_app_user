// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/api/api_login.dart';
import 'package:nsw_app/component/bottom_navigation_bar.dart';
import 'package:nsw_app/component/failed_alertdialog.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/model/login.user.Json.dart';
import 'package:nsw_app/model/user.dart';
import 'package:nsw_app/pages/home/home.dart';
import 'package:nsw_app/pages/home/home.view.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formLoginKey = GlobalKey<FormState>();
  bool light = false;
  var username;
  var password;
  var obscureText = true;

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
                          // color: Colors.green,
                          height: MediaQuery.of(context).size.height / 8,
                        ),
                        Image.asset(
                          "assets/logo_nsw.png",
                          width: MediaQuery.of(context).size.width / 3,
                        ),
                        Container(
                          // color: Colors.green,
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
                              "ชื่อผู้ใช้งาน",
                              style: GoogleFonts.prompt(
                                textStyle: TextStyle(
                                  fontSize: Config.instance.fontinfo,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: TextFormField(
                                validator: (username) {
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
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 50,
                            ),
                            Text(
                              "รหัสผ่าน",
                              style: GoogleFonts.prompt(
                                textStyle: TextStyle(
                                  fontSize: Config.instance.fontinfo,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: TextFormField(
                                obscureText: obscureText,
                                validator: (value) {
                                  return null;
                                },
                                onSaved: (_password) {
                                  setState(() {
                                    password = _password;
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
                                  hintText: 'รหัสผ่าน',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 50,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size.fromHeight(50),
                                onPrimary: Colors.white,
                                primary: const Color.fromRGBO(19, 71, 154, 1),
                              ),
                              child: Text(
                                "เข้าสู่ระบบ",
                                style: GoogleFonts.prompt(
                                  textStyle: TextStyle(
                                    fontSize: Config.instance.fontinfo,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              onPressed: () async {
                                if (_formLoginKey.currentState!.validate()) {
                                  _formLoginKey.currentState!.save();
                                }
                                print("username");
                                print(username);
                                print("password");
                                print(password);
                                userData userdata =
                                    await loginApi(username, password);
                                setState(() {
                                  User.instance.prefix = userdata.info?.prefix;
                                  User.instance.displayName =
                                      userdata.info?.displayName;
                                }); // set value userData
                                if (username == null) {
                                  showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      title: const Text('เข้าสู่ระบบล้มเหลว'),
                                      content: const Text(
                                          'โปรดกรอก ชื่อผู้ใช้งาน หรือ รหัสผ่านให้ถูกต้อง เพื่อเข้าสู่ระบบ'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'ปิด'),
                                          child: const Text('ปิด'),
                                        ),
                                      ],
                                    ),
                                  );
                                } else {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Home(),
                                    ),
                                  );
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
                                      // This bool value toggles the switch.
                                      value: light,
                                      activeColor:
                                          Color.fromRGBO(235, 158, 0, 1),
                                      onChanged: (bool value) {
                                        // This is called when the user toggles the switch.
                                        setState(() {
                                          light = value;
                                        });
                                      },
                                    ),
                                    Text(
                                      "จดจำบัญชีผู้ใช้งาน",
                                      style: GoogleFonts.prompt(
                                        textStyle: TextStyle(
                                          fontSize: Config.instance.fontinfo,
                                          color: Color.fromRGBO(19, 71, 154, 1),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                TextButton(
                                  onPressed: () async {
                                    await launchUrl(
                                        Uri.parse(
                                            "https://elaws.md.go.th/nsw-generator/gen_from_db/my/forgot_password_form.php"),
                                        mode: LaunchMode.externalApplication);
                                  },
                                  child: Text(
                                    "ลืมรหัสผ่าน ?",
                                    style: GoogleFonts.prompt(
                                      textStyle: TextStyle(
                                        fontSize: Config.instance.fontinfo,
                                        color: Color.fromRGBO(235, 158, 0, 1),
                                      ),
                                    ),
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
                        "ยังไม่มีบัญชีผู้ใช้งาน ?",
                        style: GoogleFonts.prompt(
                          textStyle: TextStyle(
                            fontSize: Config.instance.fontinfo,
                            color: Color.fromRGBO(19, 71, 154, 1),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () async {
                          await launchUrl(
                              Uri.parse(
                                  "https://elaws.md.go.th/nsw-generator/gen_from_db/my/register.php"),
                              mode: LaunchMode.externalApplication);
                        },
                        child: Text(
                          "ลงทะเบียน",
                          style: GoogleFonts.prompt(
                            textStyle: TextStyle(
                              fontSize: Config.instance.fontinfo,
                              color: Color.fromRGBO(235, 158, 0, 1),
                            ),
                          ),
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
}
