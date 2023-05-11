import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tradingappui/pages/registration.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => RegistrationPage()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            // Splash Image Container Widget Start
            Container(
              margin: EdgeInsets.only(top: 200),
              child: Center(
                child: Image.network(
                    width: 500,
                    fit: BoxFit.cover,
                    'data:image/png;base64,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'),
              ),
            ),
            // Splash Image Container Widget End

            // Splash Text Widget Start
            Container(
              margin: EdgeInsets.only(top: 220),
              child: Column(
                children: const [
                  Text(
                    'Powered By',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  Text(
                    'Sajid K.Afridi',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ],
              ),
            ),
            // Splash Text Widget End
          ],
        ),
      ),
    );
  }
}
