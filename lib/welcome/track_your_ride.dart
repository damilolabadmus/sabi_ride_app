import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sabi/welcome/use_location.dart';
import '../components/button.dart';

class TrackYourRide extends StatelessWidget {
  const TrackYourRide({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
            children: [
              Image.asset(
                'assets/ride_tracker.png',
                width: 250.0,
                height: 350.0,
              ),
              const Text(
              'Track your ride',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins-Regular'
              ),
            ),
              const Text(
              'Know your driver in advance and be\nable to view current location in real',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins-Regular'
              ),
            ),
           const SizedBox(height: 10),
           RoundedButton(
                text: 'GET STARTED',
                press: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SelectLocation()));
                },
                color: Colors.greenAccent,
                textColor: Colors.black),
          ],
        ),
      ),
    );
  }
}
