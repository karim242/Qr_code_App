import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.label,
    this.function,  
  });
  Function? function;
  final String label;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffFE7D55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
          ),
          onPressed: () {
            function!();
          },
        
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              label,
              style:const TextStyle(color:  Color(0xffFFFFFF), fontSize: 16,fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}