
import 'package:flutter/material.dart';

class SampleImage extends StatelessWidget {
  const SampleImage({ Key ? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Widget Image")
        ,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(200)
            ),
            child: Image.network(
              'https://picsum.photos/300/200',
              alignment: Alignment.bottomCenter,
              color: Colors.green,
              colorBlendMode: BlendMode.softLight,
              fit: BoxFit.cover ,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            width: 400,
            height: 400,
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(200)
            ),
            child: Image.asset(
              'assets/images/sample-image.jpg',
              alignment: Alignment.bottomCenter,
              color: Colors.green,
              colorBlendMode: BlendMode.softLight,
              fit: BoxFit.cover ,
            ),
          ),
        ]
      )
    );
  }
}