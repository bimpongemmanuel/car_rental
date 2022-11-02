 import 'package:fire_base_auth/commons/list1.dart';
import 'package:flutter/material.dart';

ListView topRated() {
    return ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
             return 
           SizedBox(
            height: 230,
            width: 300,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              // color: Colors.grey[300],
              child: Column(
                children: [
                  Container(
                    height: 180,
                    // color: Colors.blue,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(carType[index]['img']))
                    ),
                  ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(carType[index]['type']),
                    IconButton(
                      onPressed: (){},
                     icon: Icon(Icons.bookmark_border_outlined)),
                  ],
                 ),
                
                ],
              ),
            ));
           },);
  }

  ListView rentalCard() {
    return ListView.builder(
            itemCount: carType.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
             return 
           SizedBox(
            height: 250,
            width: 300,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              // color: Colors.grey[300],
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(''),
                        Text('73 miles away',)
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(carType[index]['img']),fit: BoxFit.cover)
                    ),
                  ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(carType[index]['type']),
                    IconButton(onPressed: (){},
                     icon: Icon(Icons.bookmark_border_outlined)),
                  ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(carType[index]['amount']),
                    Text('4.0')
                  ],
                 )
                ],
              ),
            ));
           },);
  }