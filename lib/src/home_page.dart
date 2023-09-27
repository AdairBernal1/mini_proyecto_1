import 'package:flutter/material.dart';
import 'package:mini_proyecto_1/src/calculate_button.dart';
import 'package:mini_proyecto_1/src/result_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double weight = 60.0;
  double height = 1.70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ingrese su peso en Kg:'),
            SizedBox(height: 10),
            Slider(
              value: weight,
              min: 0,
              max: 200,
              onChanged: (newValue) {
                setState(() {
                  weight = newValue;
                });
              },
            ),
            Text('$weight Kg'),
            SizedBox(height: 20),
            Text('Ingrese su estatura en Metros:'),
            SizedBox(height: 10),
            Slider(
              value: height,
              min: 0.5,
              max: 2.5,
              onChanged: (newValue) {
                setState(() {
                  height = newValue;
                });
              },
            ),
            Text('${height.toStringAsFixed(2)} m'),
            SizedBox(height: 20),
            CalculateButton(
              onPressed: () {
                double bmi = weight / (height * height);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(bmi: bmi),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
