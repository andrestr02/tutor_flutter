import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutor_flutter/login.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Drawer',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      drawer: Drawer(
        width: 210,
        elevation: 0,
        child: ListView(
            // padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Hudzaifah'),
                accountEmail: Text('hudzaifah@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/b2.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/b2.jpg'),
                        fit: BoxFit.cover)),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.teal,
                  size: 20,
                ),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context); // Menutup Drawer
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.teal,
                  size: 20,
                ),
                title: Text('Profil'),
                onTap: () {
                  Navigator.pop(context); // Menutup Drawer
                },
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.cart,
                  color: Colors.teal,
                  size: 20,
                ),
                title: Text('Cart'),
                onTap: () {
                  Navigator.pop(context); // Menutup Drawer
                },
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.heart_fill,
                  color: Colors.teal,
                  size: 20,
                ),
                title: Text('Whilist'),
                onTap: () {
                  Navigator.pop(context); // Menutup Drawer
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                  color: Colors.teal,
                  size: 20,
                ),
                title: Text('Notification'),
                onTap: () {
                  Navigator.pop(context); // Menutup Drawer
                },
              ),
            ]),
      ),
      body: Center(
        child: Text('Drawer Screen Example'),
      ),
    );
  }
}
