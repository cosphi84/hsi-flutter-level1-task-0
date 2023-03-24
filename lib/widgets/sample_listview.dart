
import 'package:flutter/material.dart';

class SampleListView extends StatelessWidget {
  SampleListView({super.key});
  final List colorCodes = [100, 200, 300, 400, 500, 600, 700, 800, 900];
  final List data = [
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=1',
      'name': 'Saras',
      'address': 'Banyumas',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=2',
      'name': 'Tukiyem',
      'address': 'Kebasen',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=3',
      'name': 'Wartini',
      'address': 'Cilongok',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=4',
      'name': 'Markonah',
      'address': 'Ajibarang',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=5',
      'name': 'Slendro',
      'address': 'Gumelar',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=6',
      'name': 'Winarsih',
      'address': 'Kebasen',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=7',
      'name': 'Warko',
      'address': 'Karang Rau',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=8',
      'name': 'Ponijah',
      'address': 'Banyumas',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=9',
      'name': 'Sukir',
      'address': 'Karanglewas',
    },
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Widget ListTile'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index){
          return ListTile(
            leading: Image.network(data[index]['photoUrl']),
            title: Text(data[index]['name']),
            subtitle: Text(data[index]['address']),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: (){},
            ),
            tileColor: Colors.grey[400],
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          );
        },
        itemCount: data.length,
        separatorBuilder: (context, index){
          return const Divider(
            thickness: 2,
            color: Colors.grey,
          );
        },
      )
    );
  }
}