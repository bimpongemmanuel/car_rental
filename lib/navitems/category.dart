import 'package:fire_base_auth/commons/list1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle cartitleStyle = Theme.of(context)
              .textTheme.
              bodyText1!
              .copyWith(fontSize: 20,);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Car Brand',style:cartitleStyle ,),
              SizedBox(height: 10,),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: carBrand.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey[200],
                      child: Image(image: NetworkImage(carBrand[index]['img']),fit: BoxFit.fill),
                    ),
                  );
                },),
              ),
         
               SizedBox(               
               child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
               itemCount: catImage.length, 
               physics: NeverScrollableScrollPhysics(),
               shrinkWrap: true,
               itemBuilder: (context, index) {
                 return 
               SizedBox(
                height: 230,
                width: 150,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  color: Colors.grey[350],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height:150,
                        // color: Colors.amber[100] ,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage(catImage[index]['img']),fit: BoxFit.cover)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(catImage[index]['type']),
                      )
                    ],
                  ),
                ),
               );
               },
               ),
             )
          ]),
        ),
      ),
    );
  }
}