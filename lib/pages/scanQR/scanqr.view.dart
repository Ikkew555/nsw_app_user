// ignore_for_file: prefer_const_constructors, unrelated_type_equality_checks

import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/scanQR/scanqr.view.dto.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanQRView extends StatefulWidget {
  const ScanQRView({Key? key, required this.scanQRDto}) : super(key: key);

  final scanQRDto;

  @override
  State<StatefulWidget> createState() => _ScanQRViewState();
}

class _ScanQRViewState extends State<ScanQRView> {
  late ScanQRDto scanQRDto;
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(19, 71, 154, .5),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          "แสกน QR",
          style: GoogleFonts.notoSansThai(
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              shadowColor: Colors.transparent,
            ),
            onPressed: () async {
              await controller?.toggleFlash();
              setState(() {});
            },
            child: FutureBuilder(
              future: controller?.getFlashStatus(),
              builder: (context, snapshot) {
                if (controller == "off") {
                  return Icon(
                    Icons.flash_off,
                    color: Colors.white,
                  );
                } else {
                  return Icon(
                    Icons.flash_on,
                    color: Colors.white,
                  );
                }
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(flex: 4, child: _buildQrView(context)),
        ],
      ),
      bottomNavigationBar: Material(
        color: Config.instance.color,
        child: SizedBox(
          height: 60,
          width: double.infinity,
          child: Center(
            child: Text(
              'วาง QR หรือ บาร์โค้ด\nให้อยู่ในช่องสี่เหลี่ยม',
              style: GoogleFonts.notoSansThai(
                textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 250.0
        : 250.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Config.instance.color,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
