
import 'package:flutter/material.dart';

class SimpleImage1 extends StatelessWidget {
  const SimpleImage1({ Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Image Circle'),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/sample-image.jpg'),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/sample-image.jpg'),
          ),
        ],
      ),
    );
  }
}