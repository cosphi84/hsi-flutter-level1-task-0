
import 'package:flutter/material.dart';

class SampleBottomNavbar extends StatefulWidget {
   const SampleBottomNavbar({ super.key });

   @override
  State<SampleBottomNavbar> createState() => _SampleBottomNavbarState();
}

class _SampleBottomNavbarState extends State<SampleBottomNavbar> {
  int _selectedIndex = 0;

  void _onTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    const Text(
      'Beranda',
      style: TextStyle(
        fontSize: 30,
      ),
    ),
    const Text(
      'Cari',
      style: TextStyle(
        fontSize: 30,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Bottom Nav'),
      ),
      body: Center(
        child: pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.teal[400],
        selectedItemColor: Colors.orange[400],
        selectedFontSize: 20,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: "Beranda"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
                  label: "Cari"
          )
        ],
      ),
    );
  }
}
