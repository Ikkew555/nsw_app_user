import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/login/login.view.dart';
import 'package:url_launcher/url_launcher.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
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
              // color: Colors.green,
              height: MediaQuery.of(context).size.height / 8,
            ),
            Image.asset(
              "assets/logo_nsw.png",
              width: MediaQuery.of(context).size.width / 2,
            ),
            Container(
              // color: Colors.green,
              height: MediaQuery.of(context).size.height / 3,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    primary: Colors.white,
                    onPrimary: const Color.fromRGBO(19, 71, 154, 1)),
                child: Text(
                  "เข้าสู่ระบบ",
                  style: GoogleFonts.prompt(
                    textStyle: TextStyle(
                      fontSize: Config.instance.fontinfo,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
              ),
            ),
            Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height / 50,
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
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
