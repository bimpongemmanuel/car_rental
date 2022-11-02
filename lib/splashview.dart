import 'dart:async';

import 'package:fire_base_auth/auth/login.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LogInPage(),))); 
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
      TextStyle banktitleStyle = Theme.of(context)
              .textTheme.
              bodyText1!
              .copyWith(fontSize: 30,color: Colors.white);
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
        children:[
          const Icon(Icons.business_center_outlined,size: 120,color: Colors.white,),
          const SizedBox(height: 15,),
          const Text('Welcome to',style: TextStyle(color: Colors.white),),
          const SizedBox(height: 20,),
          RichText(
            text:TextSpan(
              text: 'AB',style:banktitleStyle ,
             children: [
              TextSpan(text: 'bank',style:banktitleStyle )
             ]
            ) ),
        ]
        ),
      ),

      bottomSheet: BottomSheet(
        elevation: 0,
        backgroundColor: Colors.blue[200],
        onClosing: (){},
       builder: (context) {
         return Text('100% Safe & Secure',style: banktitleStyle.copyWith(fontSize: 20),);
       },),
    );
  }
}