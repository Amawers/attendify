import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:my_app/pages/qr_overlay.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({super.key});

  // The function below is used to process the scanned student data of the QR Code.
  // The process includes splitting the data (row), and then assigning each splitted data to a variable based on their supposed attribute (column).
  // Note: Splitting needs to be done because data inside school ID QR codes contain a concatenated text version of said student data.
  void processResult(String? result) {
    if (result != null) {
      List<String> attributes = result.split('\t');

      if (attributes.length == 5) {
        String id = attributes[0];
        String firstName = attributes[1];
        String? middleInitial =
            attributes[2]?.isNotEmpty == true ? attributes[2] : null;
        String lastName = attributes[3];
        String course = attributes[4];

        // Values are printed inside the debug console to check if it has successfully retreived information from a QR Code after scanning.
        print('Barcode Found!');
        print('ID: $id\nFirst Name: $firstName\nMiddle Initial: ${middleInitial ?? ''}\nLast Name: $lastName\nCourse: $course');
      } 
      else {
        print('Not valid.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Flex Container for the entirety of the body of the scan_page
            Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  // This is THE Scanner/Camera with scanning functionality using the pre-built onDetect function of the mobile_scanner package.
                  MobileScanner(
                    controller: MobileScannerController(
                        detectionSpeed: DetectionSpeed.noDuplicates),
                    onDetect: (capture) {
                      final List<Barcode> barcodes = capture.barcodes;
                      for (final barcode in barcodes) {
                        processResult(barcode.rawValue);
                      }
                    },
                  ),
                  // Design overlay for the QR Scanner.
                  const QRScannerOverlay(
                      overlayColour: Color.fromARGB(255, 255, 255, 255)),

                  const SizedBox(
                    height: 50,
                    child: Text(
                      'Scan the QR code to check attendance',
                      style: TextStyle(color: Color(0xFF081631)),
                    ),
                  ),
                ],
              ),
            ),
            // Container where we can add elements below the QR scanner.
            Expanded(
              child: Container(
                  // This is where we can add content or elements below the QR scanner.
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
