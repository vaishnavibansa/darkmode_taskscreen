import 'dart:async';

import 'package:flutter/material.dart';
import 'Controller/counter_controller.dart';
import 'View/Splashscreen.dart';
import 'View/foodlist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ThemeController _themeController = ThemeController();

  @override
  Widget build(BuildContext context) {

    bool isDarkMode = false;

    void toggleDarkMode() {
      setState(() {
        isDarkMode = !isDarkMode;
      });
    }


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: _themeController.isDarkMode ? _themeController.darkTheme : _themeController.lightTheme,
      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark,  // Other MaterialApp configurations...
      title: 'My App',
      home: SplashScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 80.0, left: 10.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      // Perform search action
                    },
                  ),
                  SizedBox(
                    width: 250,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.notifications),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    radius: 20, // Set the radius as per your requirement
                    backgroundImage: AssetImage(
                        'assets/images/foodapp.png'), // Replace with your image asset path
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Align(alignment: Alignment.topLeft,
                child: Text("Let's Eat \n Healthy Food",
                style: TextStyle(fontSize:30.0,fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                height: 5,
              ),
              Container(height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height:150,
                          width: 80,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.green ,
                            borderRadius: BorderRadius.circular(40),


                          ),
                        child:  Column(
                          children: [
                            Container(margin: EdgeInsets.only(top: 15.0),
                              child: CircleAvatar(
                                radius: 30, // Set the radius as per your requirement
                                backgroundImage: AssetImage(
                                    'assets/images/foodapp.png'), // Replace with your image asset path
                              ),
                            ),
                            SizedBox(height: 15.0,),
                            Text("pizza",style: TextStyle(fontSize: 20.0),)
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height:5.0
            ),
              Container(height: 50,
              child: Row(
                children: [
                  Text("Popular Dishes ",
                    style: TextStyle(fontSize:25.0,fontWeight: FontWeight.bold),),
                  SizedBox(
                   width: 100,
                  ),

                  Text("View all ",
                    style: TextStyle(fontSize:25.0,color: Colors.red),),
                 IconButton(onPressed: (){},  icon: Icon(Icons.arrow_right),)
                ],
              ),),
              Container(height: 300,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              height: 200,
                              width:180,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(30),


                              ),
                              child: Image.asset('assets/images/foodapp.png',fit: BoxFit.cover,),
                            ),
                            onTap: (){
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (_) => FoodList()),
                              );
                            },
                          ),

                         Align(alignment: Alignment.topLeft,
                             child: Text("Pumpkin Soup",style: TextStyle(fontSize: 20.0))),
                          Align(alignment: Alignment.topLeft,
                              child: Text("Pumpkin Soup",style: TextStyle(fontSize: 12.0,color: Colors.grey))),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: (){}, child: Text("57.0"),),
                              IconButton(onPressed: (){}, icon: Icon(Icons.star_rate_rounded)),
                              Text("5.0")
                            ],
                          )
                        ],
                      );
                    }),
              ),
              SizedBox(
                  height:15.0
              ),
              Align(alignment: Alignment.topLeft,
                child: Text("Discover New places  ",
                  style: TextStyle(fontSize:25.0,fontWeight: FontWeight.bold),),
              ),
           Container(
             height: 120.0,child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemCount: 5,
               itemBuilder: (BuildContext context, int index) {
                 return  Container(
                   height: 100,
                   width:100,
                   margin: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.pink,
                     borderRadius: BorderRadius.circular(100),


                   ),

                 );
               }
               ),

           ),


            ],
          ),
        ),
      ),
    );
  }
}
