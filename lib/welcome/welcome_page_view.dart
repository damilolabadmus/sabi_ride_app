import 'package:flutter/material.dart';
import 'package:sabi/welcome/confirm_your_driver.dart';
import 'package:sabi/welcome/track_your_ride.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'request_ride.dart';

class WelcomePageView extends StatelessWidget {
  WelcomePageView({super.key});

  final _indicatorController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _indicatorController,
              children: const [
                RequestRide(),
                ConfirmYourDriver(),
                TrackYourRide(),
              ],
            ),
          ),

          SmoothPageIndicator(
            controller: _indicatorController,
            count: 3,
            effect: const ExpandingDotsEffect(
              activeDotColor: Colors.green,
              dotColor: Colors.yellow,
              dotHeight: 10,
              dotWidth: 10,
              // offset: 10
            ),
          )
        ],
      )
    );
  }
}
