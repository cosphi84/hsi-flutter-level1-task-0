
import 'package:flutter/material.dart';

class SampleContainer extends StatelessWidget {
  const SampleContainer({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width:300,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        color: Colors.amber,
        border: Border.all(width: 4, color: Colors.red),
        borderRadius: BorderRadius.circular(15)

      ),
      child: const Text("Selamat Belajar Container dan layout lainnya"),
    );
  }
}