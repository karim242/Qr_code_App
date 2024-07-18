import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
 const CustomFormTextField({
  super.key, this.hintText, this.onChanged ,
  this.obscureText =false, this.suffixIcon
  });
 final Function(String)? onChanged;
 final String? hintText;
 final bool? obscureText;
 final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:obscureText!,
      
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required';
        }
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        suffixIcon:suffixIcon ,
        hintText: hintText,
        hintStyle: const TextStyle(color:  Color(0xff8B90A0),fontSize: 14,
        fontWeight: FontWeight.w400),
      
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffDFDCDC),
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
          color  : Color(0xffDFDCDC),
          ),
        ),
      ),
    );
  }
}