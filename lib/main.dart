import 'package:flutter/material.dart';
import 'package:fourth_task/feature/login/views/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        fontFamily:'Inter',
        ),
        home: const LoginView(),
    );
  }
}
