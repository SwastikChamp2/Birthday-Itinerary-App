import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:flutter/services.dart';

class QRScannerScreen extends StatefulWidget {
  @override
  _QRScannerScreenState createState() => _QRScannerScreenState();
}

class _QRScannerScreenState extends State<QRScannerScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  String qrText = "Scan a QR Code";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Code Scanner"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Stack(
              alignment: Alignment.center,
              children: [
                QRView(
                  key: qrKey,
                  onQRViewCreated: _onQRViewCreated,
                ),
                Container(
                  width: 200, // Adjust the size of the square border
                  height: 200, // Adjust the size of the square border
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue, // Border color
                      width: 4, // Border width
                    ),
                    borderRadius:
                        BorderRadius.circular(20), // Adjust the border radius
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 250,
                  child: Text(
                    qrText,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.content_copy,
                    color: Color.fromARGB(
                        255, 230, 234, 244), // Set the same color as text
                  ),
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: qrText));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Copied to clipboard"),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        qrText = scanData.code ??
            "Scan a QR Code"; // Use ?? to provide a default value if scanData.code is null.
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
