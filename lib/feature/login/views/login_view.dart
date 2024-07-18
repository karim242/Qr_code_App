import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fourth_task/constant.dart';
import 'package:fourth_task/feature/home/views/scan_view.dart';
import 'package:fourth_task/feature/home/widgets/scan_body.dart';
import 'package:fourth_task/feature/login/widgets/custom_button.dart';
import 'package:fourth_task/feature/login/widgets/custom_text_fieald.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool obscureText = true;

  GlobalKey<FormState> formKey = GlobalKey();
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
           Padding(

          padding: const EdgeInsets.symmetric(horizontal: 21.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 120),
                   Center(
                    child: Text(
                      'Login',
                      style: textStyle24(),
                    ),
                  ),
                  const SizedBox(height: 145),
                  CustomFormTextField(
                    hintText: 'Enter your phone',
                    onChanged: (value) {
                      email = value;
                    },
                  ),
                  const SizedBox(height: 16),
                  CustomFormTextField(
                    onChanged: (value) {
                      password = value;
                    },
                    hintText: 'Password',
                    obscureText: obscureText,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      icon: Icon(
                        obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(0xff757575),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                  const SizedBox(height: 43),
                  CustomButton(
                    label: 'Login',
                    function: () {
                      if (formKey.currentState!.validate()) {
                        print(email);
                        print(password);
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => const ScanView(child: ScanBody(),)));
                      }
                    },
                  )
                ],
              ),
            ),
          )),
     Positioned(
     
      left: -37,
      child: SvgPicture.asset(imagePath1,)),
     Positioned(
       
      left: 207,
      child: SvgPicture.asset(imagePath2)),

     
      ],)
          
          
        
    );
  }

 
}
