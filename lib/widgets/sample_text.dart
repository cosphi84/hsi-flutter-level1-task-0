
import 'package:flutter/material.dart';

class SampleText extends StatelessWidget {
  const SampleText({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Widget Text"),
      ),
      body: Column(
        children:[
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all()
            ),
            margin: const EdgeInsets.all(40),
            child: const Text("Lorem Ipsum Dolor sit Amet."),
          ),
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.black,
            ),
            margin: const EdgeInsets.all(40),
            child: Text(
                ''' Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
                when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. 
                It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
                and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ''',
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
              textScaleFactor: 1,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red[400]
              ),
            ),
          ),
        ]
      )
    );
  }
}