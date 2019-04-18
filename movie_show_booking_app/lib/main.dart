import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/auth.dart';
import './pages/registration.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.black,
      ),
      home: AuthPage(),
      routes: {
        '/home': (BuildContext context) => HomePage(),
        '/registration': (BuildContext context) => RegistrationPage(),
      },
    );
  }
}
