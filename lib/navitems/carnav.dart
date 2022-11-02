import 'package:fire_base_auth/auth/profile.dart';
import 'package:fire_base_auth/navitems/category.dart';
import 'package:fire_base_auth/navitems/homepage.dart';
import 'package:flutter/material.dart';

class CarNav extends StatefulWidget {
  const CarNav({Key? key}) : super(key: key);

  @override
  State<CarNav> createState() => _CarNavState();
}

class _CarNavState extends State<CarNav> {
   int _currentIndex = 0;
  List<Widget> pages = [
    HomePage(),
    CategoryPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children:pages ,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        elevation:0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.amber[400],
        backgroundColor: Colors.grey[200],
        onTap: (index){
               setState(() {
                 _currentIndex = index;
               });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.category,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person,),label: ''),
        ]),
    );
  }
}