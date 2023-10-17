import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

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
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            //Section ni diri kung gusto ta mag add ug text sa taas sa QR Scanner
            Expanded(
              child: Container(
                  //Text for above QR Scanner
                  ),
            ),
            //Code below kay kung asa ang container sa QR Scanner
            Expanded(
              flex: 4,
              //Nara diri ang Scanner/Camera
              child: MobileScanner(
                onDetect: (barcodes) {
                  //Diri ang code to make the scanner functional pag makadetect siya ug QR code
                },
              ),
            ),
            //Section ni diri kung gusto ta mag add ug text sa ubos sa QR Scanner
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  'Scan the QR code to check attendance',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
