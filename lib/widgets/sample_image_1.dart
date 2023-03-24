
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
          //Image.asset('assets/images/sample-image.jpg'),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/sample-image.jpg'),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              'assets/images/sample-image.jpg',
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
          ClipOval(
            child: Image.asset(
              'assets/images/sample-image.jpg',
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/sample-image.jpg'),
                fit: BoxFit.fill
              )
            ),
          )
        ],
      ),
    );
  }
}