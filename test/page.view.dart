import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/config.dart';

class ScanIdcardSuggestion extends StatefulWidget {
  const ScanIdcardSuggestion({Key? key}) : super(key: key);

  @override
  State<ScanIdcardSuggestion> createState() => _ScanIdcardSuggestionState();
}

class _ScanIdcardSuggestionState extends State<ScanIdcardSuggestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "ถ่ายรูปบัตรประชาชน",
          style: GoogleFonts.prompt(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Config.instance.color,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                "assets/mail.png",
                width: MediaQuery.of(context).size.width * .6,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "เตรียมถ่ายรูปบัตรประชาชน",
              style: GoogleFonts.prompt(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "สำหรับใช้ในการยืนยันตัวตน เพื่อความปลอดภัย ในการเข้าใช้งานครั้งถัดไป",
              style: GoogleFonts.prompt(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/mail.png",
                  width: MediaQuery.of(context).size.width * .2,
                ),
                SizedBox(width: 15),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .66,
                  child: Text(
                      "แนะนำให้วางบัตรบนโต๊ะหรือบนพื้นราบ และ ถ่ายรูปให้เห็นทั้งตัวบัตร"),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/mail.png",
                  width: MediaQuery.of(context).size.width * .2,
                ),
                SizedBox(width: 15),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .66,
                  child: Text(
                      "อย่าถือบัตรโดยวางนิ้วมือบดบังรูป ตัวอักษรหรือสัญลักษณ์ต่างๆ บนหน้าบัตร"),
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    // TakePicBtn(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
