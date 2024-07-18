import 'package:flutter/material.dart';

class ScanView extends StatelessWidget {
  const ScanView({super.key, required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x0ff00000),
      body: Container(
        margin: const EdgeInsets.only(top: 100),
        decoration:const BoxDecoration(
          color:  Color(0xffFFFFFF),
          borderRadius:  BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child:  child,
      ),
    );
  }
}
