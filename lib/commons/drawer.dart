
import 'package:fire_base_auth/navitems/homepage.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(radius: 25,backgroundColor: Colors.grey[200],),
                title: Text('Bimpong Emmanuel'),
                subtitle: Text('bimponge38@gmail.com'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(child: Text('Home',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>HomePage(),));
                },
                ),
              ),
              SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: GestureDetector(child: Text('Services',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
               ),
               SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(child: Text('Contact',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                ),
                SizedBox(height: 10,),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: GestureDetector(child: Text('About',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                 ),
          ],),
        ),
      ),
    );
  }
}