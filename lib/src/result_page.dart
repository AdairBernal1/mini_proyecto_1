import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double bmi;

  ResultPage({required this.bmi});

  String getBMIResult() {
    if (bmi < 18) {
      return 'Peso Bajo. Necesario valorar signos de desnutrición';
    } else if (bmi >= 18 && bmi <= 24.9) {
      return 'Normal';
    } else if (bmi >= 25 && bmi <= 26.9) {
      return 'Obesidad';
    } else if (bmi >= 27 && bmi <= 29.9) {
      return 'Obesidad grado I. Riesgo relativo para desarrollar enfermedades cardiovasculares';
    } else if (bmi >= 30 && bmi <= 39.9) {
      return 'Obesidad grado II. Riesgo relativo muy alto para el desarrollo de enfermedades cardiovasculares';
    } else {
      return 'Obesidad grado III (Extrema o mórbida). Riesgo relativo extremadamente alto para el desarrollo de enfermedades cardiovasculares';
    }
  }

  String getImagePath() {
    if (bmi < 18) {
      return 'assets/menor18.png'; 
    } else if (bmi >= 18 && bmi <= 24.9) {
      return 'assets/18-24.9.png'; 
    } else if (bmi >= 25 && bmi <= 26.9) {
      return 'assets/25-26.9.png'; 
    } else if (bmi >= 27 && bmi <= 29.9) {
      return 'assets/27-29.9.png'; 
    } else if (bmi >= 30 && bmi <= 39.9) {
      return 'assets/30-39.9.png'; 
    } else {
      return 'assets/mayor40.png'; 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado del IMC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Su IMC es:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(fontSize: 48),
            ),
            SizedBox(height: 20),
            Text(
              getBMIResult(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Image.asset(
              getImagePath(),
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
