
import 'package:flutter/material.dart';

class SampleListViewAvatar extends StatelessWidget {
  SampleListViewAvatar({super.key});
  final List colorCodes = [100, 200, 300, 400, 500, 600, 700, 800, 900];

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text('Latihan ListView'),
        ),
        body: Container(
          height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index){
                return CircleAvatar(
                  radius: 60,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage:
                    NetworkImage('https://i.pravatar.cc/150?img=$index'),
                  ),
                );
              },
              itemCount: colorCodes.length,
            )
        ),
    );
  }
}