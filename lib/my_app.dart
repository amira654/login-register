import 'package:flutter/material.dart';

import 'features/home/models/register_model.dart';
import 'features/home/views/screens/caculate_mass.dart';
import 'features/home/views/screens/login_screen.dart';
import 'features/home/views/screens/register_screen.dart';
import 'features/home/views/screens/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
