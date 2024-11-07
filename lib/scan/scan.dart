
import 'package:ai_barcode_scanner/ai_barcode_scanner.dart';
import 'package:flutter/material.dart';

class Scan extends StatefulWidget {
  const Scan({super.key});

  @override
  State<Scan> createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Center(child: Text("QR Scanner")),
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                // AiBarcodeScanner(),
                ElevatedButton(
                  onPressed: ()  {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AiBarcodeScanner(
                              onDetect: (p0) {
                                
                              },
                            )));
                  },
                  child: Text("Tap Scan"),
                )
              ],
            ),
          ),
        ));
  }
}
