
import 'package:flutter/material.dart';
import 'package:hsi_level1/widgets/sample_colum_row.dart';
import 'package:hsi_level1/widgets/sample_widget_padding.dart';

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
    const SamplePadding(),
    const SampleColRow(),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Widget Padding'),
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
