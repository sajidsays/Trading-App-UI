import 'package:flutter/material.dart';
import '../pages/gallery.dart';
import '../pages/login.dart';
import '../pages/registration.dart';
import '../pages/signup.dart';
import '../pages/splash.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RegistrationPage(),
    );
  }
}
