import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RequestRide extends StatelessWidget {
  const RequestRide({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(height: 15),
          Image.asset(
            'assets/mobile_hold.png',
            width: 250.0,
            height: 350.0,
          ),
          /*SvgPicture.asset(
           'assets/mobile_hold.svg',
            color: Colors.lightBlue,
            height: 200
          ),*/
          const SizedBox(height: 5),
          const Text(
            'Request Ride',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              fontFamily: 'Poppins-Regular'
            ),
          ),
          const Text(
            'Request a ride get picked by a',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins-Regular'
            ),
          ),
        ],
      ),
    );
  }
}
