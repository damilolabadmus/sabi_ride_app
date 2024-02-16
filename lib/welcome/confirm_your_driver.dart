import 'package:flutter/material.dart';

class ConfirmYourDriver extends StatelessWidget {
  const ConfirmYourDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 10),
            Image.asset(
              'assets/mobile.png',
              width: 250.0,
              height: 350.0,
            ),
            /*SvgPicture.asset(
              'assets/mobile.svg',
               color: Colors.lightBlue,
               height: 200
            ),*/
            const Text(
            'Confirm Your Driver',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins-Regular'
            ),
          ),
        ],
      ),
    );
  }
}
