import 'package:flutter/material.dart';
import 'package:tradingappui/pages/splash.dart';

import 'view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Trading App UI',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
