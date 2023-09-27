import 'package:flutter/material.dart';
import 'package:mini_proyecto_1/src/home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    Future.delayed(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Calculadora de IMC',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
