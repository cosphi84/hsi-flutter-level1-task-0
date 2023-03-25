
import 'package:flutter/material.dart';

class SampleColRow extends StatelessWidget {
  const SampleColRow({ super.key });

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _box(),
        _box(),
      ],
    );
  }

  Widget _box(){
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(),
      ),
    );
  }

}