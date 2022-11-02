import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyNav extends StatefulWidget {
  const MyNav({Key? key}) : super(key: key);

  @override
  State<MyNav> createState() => _MyNavState();
}

class _MyNavState extends State<MyNav> {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Text('$index'),
      ),
      bottomNavigationBar: CurvedNavigationBar(      
        animationDuration: Duration(milliseconds: 300),
        backgroundColor:Colors.amber,
        index: index,
       onTap: (index) => setState(() {
          index;
       }),
        items:[
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
        ] ),
    );
  }
}