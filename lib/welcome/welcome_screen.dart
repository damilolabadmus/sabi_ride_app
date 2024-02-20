import 'package:flutter/material.dart';
import 'welcome_page_view.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 200),
          pageBuilder: (_, __, ___) => WelcomePageView(),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        ),
      );
    });

    return SafeArea(
      child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.white),
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('SABI\nRIDE',
              style: TextStyle(color: Colors.black,
                fontSize: 24,
                fontFamily: 'Poppins-Bold',
                fontWeight: FontWeight.w600
              ),
            )
          ),
        ),
      ),
    );
  }
}
