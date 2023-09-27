import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final Function onPressed;

  CalculateButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      child: Text('Calcular'),
    );
  }
}
