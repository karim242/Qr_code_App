// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';

// import 'dart:io';

// class QRCodeScannerScreen extends StatefulWidget {
//   const QRCodeScannerScreen({super.key});

//   @override
//   _QRCodeScannerScreenState createState() => _QRCodeScannerScreenState();
// }

// class _QRCodeScannerScreenState extends State<QRCodeScannerScreen> {
//   String? result;

//   Future<void> _pickImage() async {
//     final ImagePicker picker = ImagePicker();
//     final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);
//     if (pickedFile != null) {
//       // Process the picked image to extract QR code
//       final File imageFile = File(pickedFile.path);
      
//       final qrCode = await  MobileScanner().detectBarcodesFromImage(imageFile);
      
//       if (qrCode.isNotEmpty) {
//         setState(() {
//           result = qrCode.first.rawValue; // Use the first detected QR code
//         });
//       } else {
//         setState(() {
//           result = 'No QR code found in the image.';
//         });
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('QR Code Scanner'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             flex: 5,
//             child: MobileScanner(
//             //  allowDuplicates: false,
//               onDetect: (barcode, args) {
//                 setState(() {
//                   result = barcode.rawValue;
//                 });
//               },
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Center(
//               child: (result != null)
//                   ? Text('QR Code Data: $result')
//                   : Text('Scan a code'),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: _pickImage,
//             child: Text('Pick QR Code from Gallery'),
//           ),
//         ],
//       ),
//     );
//   }
// }