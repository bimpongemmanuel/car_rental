import 'package:fire_base_auth/commons/card.dart';
import 'package:fire_base_auth/commons/list1.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isBookMarkClicked = false;
  @override
  Widget build(BuildContext context) {
    TextStyle cartitleStyle = Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 20,
        );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: CircleAvatar(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: Colors.blue,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find a perfect ride for your trip',
                style: cartitleStyle,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    hintText: 'search',
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Colors.black,
                    iconColor: Colors.black,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    )),
              ),
              Text(
                'Choose brand',
                style: cartitleStyle,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  itemCount: carBrand.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green,
                          image: DecorationImage(image: NetworkImage(carBrand[index]['img']),fit: BoxFit.cover)
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Near by',
                style: cartitleStyle,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 270,
                child: rentalCard(),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Top rated',
                style: cartitleStyle,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 270,
                child: topRated(),
              ),
              SizedBox(height: 10),
              Text('Do you want to buy', style: cartitleStyle),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount:forSale.length ,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 250,
                      width: 150,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        // color: Colors.grey[350],
                        child:Image(image: NetworkImage(forSale[index]['img']),fit: BoxFit.cover,)
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
