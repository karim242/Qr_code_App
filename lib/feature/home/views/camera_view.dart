import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fourth_task/feature/home/controller/data_cubit/data_cubit.dart';
import 'package:fourth_task/feature/home/views/custom_layout.dart';
import 'package:fourth_task/feature/home/views/result_view.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRScannerScreen extends StatefulWidget {
  const QRScannerScreen({super.key});

  @override
  State<QRScannerScreen> createState() => _QRScannerScreenState();
}

class _QRScannerScreenState extends State<QRScannerScreen> {
  MobileScannerController cameraController = MobileScannerController();
  bool isScanned = false;

  @override
  Widget build(BuildContext context) {
    final scanner = MobileScannerController();
    scanner.start();

    return Scaffold(
        appBar: AppBar(
          title: const Text('QR Code Scanner'),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: MobileScanner(
                  controller: cameraController,
                  onDetect: (barcode) async {
                    if (!isScanned) {
                      setState(() {
                        isScanned = true;
                      });
                      final String qrText = barcode.barcodes.first.rawValue!;
                      print(qrText);

                      BlocProvider.of<AddDataCubit>(context).addData(qrText);
                      scanner.stop();
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ScanView(child: ResultsView())),
                      ).then((_) {
                        setState(() {
                          isScanned = false;
                        });
                      });
                    }
                  },
                  overlayBuilder:
                      (BuildContext context, BoxConstraints constraints) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      child: Center(
                        child: Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.red, width: 4),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  'Scan a code',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ));
  }
}
