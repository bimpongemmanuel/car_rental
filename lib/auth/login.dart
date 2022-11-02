import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var outlineInputBorder =  OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.grey)
    );
     TextStyle banktitleStyle = Theme.of(context)
              .textTheme.
              bodyText1!
              .copyWith(fontSize: 30,);
          
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.business_center_outlined,color: Colors.blue,size: 100,),
            const SizedBox(height: 20,),
            Text('Welcome Back',style: banktitleStyle.copyWith(fontSize: 20),),
            const SizedBox(height: 10,),
            Text('Bimpong Emmanuel',style: banktitleStyle,),
            const SizedBox(height: 25,),
            const Text('Log in with ABbank user ID'),

            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: outlineInputBorder,
                  focusedBorder: outlineInputBorder,
                ),
              ),
            ),
            const SizedBox(height: 10,),

             Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                obscureText: true,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: outlineInputBorder,
                  focusedBorder: outlineInputBorder,
                ),
              ),
            ),
            const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
            onPressed: (){},
           child: const Center(child: Text('Submit',style:  TextStyle(color: Colors.white),))),
        )
        ]),
      ),
    );
  }
}