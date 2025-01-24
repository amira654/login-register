import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nti_task/features/home/views/screens/login_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) =>  LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [
        Positioned(
        child: 
        Image.asset(
          'assets/images/intro.png',
            width: 430,
            height: 932,
            fit: BoxFit.cover,
        ),
        ),
        const Positioned(
        left: 33,top: 575,height: 58,width: 365,
        child: 
        Text("Welcome to Ready Hire",
            style: TextStyle(
              fontFamily: 'Konkhmer Sleokchher',
              fontWeight: FontWeight.w400,
              fontSize: 30,
              color: Colors.white
              
            ),
            ),
            ),
        const Positioned(
        left: 45,top: 710,height: 72,width: 341,
        child: 
          Center(
            child: Text("The Best Job Finder in Middle East",
                style: TextStyle(
                  fontFamily: 'Konkhmer Sleokchher',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.white
                  
                ),
                ),
          ), 
          ),
          const Positioned(
        left: 45,top: 750,height: 72,width: 341,
        child: 
          Center(
            child: Text("Where the Best Jobs Find You",
                style: TextStyle(
                  fontFamily: 'Konkhmer Sleokchher',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.white
                  
                ),
                ),
          ), 
          )
            
            
      ],

     ),
    );
  }
}
