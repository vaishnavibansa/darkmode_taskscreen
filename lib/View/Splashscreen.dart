import 'dart:async';

import 'package:flutter/material.dart';

import '../main.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        const  Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Center(
          child: Image.asset('assets/images/foodapp.png',fit: BoxFit.cover ,height: MediaQuery.of(context).size.height), // Replace with your image asset path
        ),
          // Center(
          //     child: Container( width: 100,
          //       height: 100,
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //           // change the color as desired
          //       ),
          //     )),
        ]
      ),
    );
  }
}
