import 'package:flutter/material.dart';
class ServiceCard extends StatelessWidget {
  const ServiceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                // scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                return
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         height: 250,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                         color: Colors.grey[200],
                         ),
                       ),
                     );
              },),
            )
                   
          ],
        ),
      ),
    );
  }
}