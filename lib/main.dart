import 'package:flutter/material.dart';
import 'package:mini_proyecto_1/src/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de IMC',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: SplashScreen(),
    );
  }
}
