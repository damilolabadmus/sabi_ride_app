import 'package:flutter/material.dart';
import 'package:sabi/welcome/welcome_screen.dart';

class WelcomePage extends StatelessWidget {

  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
      body: WelcomeScreen(),
    );
  }
}
