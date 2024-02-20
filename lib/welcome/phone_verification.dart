import 'package:flutter/material.dart';
import '../components/button.dart';
import 'location_page.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({super.key});

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 430,
            height: 200,
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },),
                  const Text(
                    'Phone Verification',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins-Regular',
                      color: Colors.white,
                      letterSpacing: 2
                    ),
                  ),
                  const Text(
                    'Enter your OTP code here',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins-Regular',
                      color: Colors.white,
                    ),
                  ),
              ],),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            const Text('5', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800)),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Container(height: 5, width: 45, color: Colors.black26),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Text('2', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Container(height: 5, width: 45, color: Colors.black26),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Icon(Icons.circle_rounded, color: Colors.black, size: 15),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Container(height: 5, width: 45, color: Colors.black26),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Icon(Icons.circle_rounded, color: Colors.black, size: 15),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Container(height: 5, width: 45, color: Colors.black26),
                            )
                          ],
                        )
                      ],),
                  ),
                  RoundedButton(
                      text: 'Verify Now',
                      press: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => LocationPage()));
                      },
                      color: Colors.greenAccent,
                      textColor: Colors.white
                  ),
                  const SizedBox(height: 10)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
