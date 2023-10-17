import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:my_app/pages/qr_overlay.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   automaticallyImplyLeading: false,
      // ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              //Section ni diri kung gusto ta mag add ug text sa taas sa QR Scanner
              child: Container(
                  // Text above QR Scanner
                  ),
            ),
            //Code below kay kung asa ang container sa QR Scanner
            Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  //Nara diri ang Scanner/Camera
                  MobileScanner(
                    onDetect: (barcodes) {
                      //Diri ang code to make the scanner functional pag makadetect siya ug QR code
                    },
                  ),
                  //Overlay for the QR Scanner
                  const QRScannerOverlay(overlayColour: Color(0xFF081631)),

                  const SizedBox(
                    height: 80,
                    child: Text('Scan the QR code to check attendance'),
                  ),
                ],
              ),
            ),
            //Section ni diri kung gusto ta mag add ug text sa ubos sa QR Scanner
            Expanded(
              child: Container(
                  //Text below QR Scanner
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
