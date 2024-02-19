import 'package:flutter/material.dart';
import '../auth/login_page.dart';

class SelectLocation extends StatelessWidget {
  const SelectLocation({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 200),
          pageBuilder: (_, __, ___) => const LoginPage(),
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

  return Container(
    color: Colors.white,
    child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/mobile_outline.png', width: 100, height: 90),
                        Image.asset('assets/location_connection.png', width: 120, height: 100),
                  ]),
                  const Divider(height: 1, thickness: 1, color: Colors.black),
                ],
              ),
            ),
            Column(
              children: const [
                Text(
                  'Hi, nice to meet you!',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins-Bold',
                      color: Colors.black,
                      wordSpacing: 1
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Choose your location to start find',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins-Regular',
                      color: Colors.black54
                  ),
                )
              ],
            ),
            Container(
              height: 45,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey,),
                  color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.near_me_rounded, color: Colors.grey),
                  SizedBox(width: 2),
                  Text(
                    'Use Current Location',
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 12,
                        fontFamily: 'Poppins-Regular', wordSpacing: 2)
                  ),
                ],
              ),
            ),
            const Text(
              'Select it manually',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins-Regular',
                color: Colors.black54,
                decoration: TextDecoration.underline,
                decorationColor: Colors.black54,
                decorationThickness: 0.5,
              ),
            )
          ],
        ),
      ),);
  }
}
