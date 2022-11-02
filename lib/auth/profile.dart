import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Bimpong'),
                      const SizedBox(height: 10,),
                      const Text('bimponge38@gmail.com'),
                      const SizedBox(height: 10,),
                      TextButton(
                        style: TextButton.styleFrom(backgroundColor: Colors.blue[200]),
                        onPressed: (){},
                       child: const Text('Edit Profile',style:  TextStyle(color: Colors.white),))
                    ],
                  ),
              ],),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(Icons.speed),
                           SizedBox(height:10),
                          Text('1000'),
                          SizedBox(height:10),
                          Text('Total km')
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(Icons.redeem_outlined),
                           SizedBox(height:10),
                          Text('20'),
                          SizedBox(height:10),
                          Text('Total ride')
                        ],
                      ),
                    ),
                  ),
              ],),
              const SizedBox(height: 20,),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.grey[200]),
                onPressed: (){},
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Rides history',style: TextStyle(color: Colors.black,fontSize: 20),),
                  Icon(Icons.arrow_forward_ios)
                ],
               )),
                const SizedBox(height: 20,),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.grey[200]),
                onPressed: (){},
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Payment Method',style: TextStyle(color: Colors.black,fontSize: 20),),
                  Icon(Icons.arrow_forward_ios)
                ],
               )),
                const SizedBox(height: 20,),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.grey[200]),
                onPressed: (){},
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('FAQ',style: TextStyle(color: Colors.black,fontSize: 20),),
                  Icon(Icons.arrow_forward_ios)
                ],
               )),
                const SizedBox(height: 20,),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.grey[200]),
                onPressed: (){},
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Terms & condition',style: TextStyle(color: Colors.black,fontSize: 20),),
                  Icon(Icons.arrow_forward_ios)
                ],
               )),
                const SizedBox(height: 20,),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.grey[200]),
                onPressed: (){},
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Settings',style: TextStyle(color: Colors.black,fontSize: 20),),
                  Icon(Icons.arrow_forward_ios)
                ],
               )),
                const SizedBox(height: 20,),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.grey[200]),
                onPressed: (){},
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Support center',style: TextStyle(color: Colors.black,fontSize: 20),),
                  Icon(Icons.arrow_forward_ios)
                ],
               )),
               const SizedBox(height: 30,),
                TextButton(
                        onPressed: (){},
                       child: const Center(child: Text('Log Out',style: TextStyle(color: Colors.black,fontSize:30),)))
            ],
          ),
        ),
      ),
    );
  }
}