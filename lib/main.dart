import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fourth_task/constant.dart';
import 'package:fourth_task/feature/home/controller/data_cubit/data_cubit.dart';
import 'package:fourth_task/feature/home/model/data_model.dart';
import 'package:fourth_task/feature/login/views/login_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox<String>(kDataBox);
  //Hive.registerAdapter(DataModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddDataCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Inter',
        ),
        home: const LoginView(),
      ),
    );
  }
}
