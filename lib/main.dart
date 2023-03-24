import 'package:flutter/material.dart';
import 'package:hsi_level1/widgets/sample_container.dart';
import 'package:hsi_level1/widgets/sample_image.dart';
import 'package:hsi_level1/widgets/sample_image_1.dart';
import 'package:hsi_level1/widgets/sample_listview.dart';
import 'package:hsi_level1/widgets/sample_listview_avatar.dart';
import 'package:hsi_level1/widgets/sample_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SampleListViewAvatar(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Container"),
      ),
      body: const SampleContainer(),
    );
  }
}