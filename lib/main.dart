import 'package:get_it/get_it.dart';

import './screens/login_screen.dart';
import 'package:flutter/material.dart';
import './controllers/register_controller.dart';

//Others Class

void main() {
  instaces();
  runApp(MyApp());
}

void instaces() {
  getIt.registerSingleton<RegisterController>(RegisterController());
}

final getIt = GetIt.I;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MobX Tutorial',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent,
        cursorColor: Colors.deepPurpleAccent,
        scaffoldBackgroundColor: Colors.deepPurpleAccent,
      ),
      home: LoginScreen(),
    );
  }
}
