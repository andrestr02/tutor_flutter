//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:tutor_flutter/app_bar.dart';
import 'package:tutor_flutter/daftar_centang.dart';
import 'package:tutor_flutter/floating_button.dart';
import 'package:tutor_flutter/login.dart';
import 'package:tutor_flutter/table.dart';
//import 'package:tutor_flutter/my_theme.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentIndex = 0;
  List<Widget> pages = [
    TabelKu(),
    FloatingButton(),
    SignUpApp(),
    MyApp(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bottom Navbar',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Cari',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: 'Cari',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Cari',
              backgroundColor: Colors.grey),
        ],
        type: BottomNavigationBarType.shifting,
      ),
      body: pages[currentIndex],
    );
  }
}
