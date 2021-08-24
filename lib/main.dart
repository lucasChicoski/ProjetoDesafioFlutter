import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
//screen
import 'screens/login_screen.dart';
//Controller
import './controllers/register_controller.dart';
import 'controllers/login_controller.dart';
//Others Class

void main() {
  instaces();
  runApp(MyApp());
}

void instaces() {
  getIt.registerSingleton<RegisterController>(RegisterController());
  getIt.registerSingleton<LoginController>(LoginController());
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
