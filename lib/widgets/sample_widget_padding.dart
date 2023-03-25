
import 'package:flutter/material.dart';

class SamplePadding extends StatelessWidget {
  const SamplePadding({super.key});

  @override
  Widget build(BuildContext context){
    return const Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30
        ),
      child: Text(
        'Hello, ini adalah padding yang langsung dari Widget Padding',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}