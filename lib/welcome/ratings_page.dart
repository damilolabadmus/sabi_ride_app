import 'package:flutter/material.dart';
import 'package:sabi/welcome/tips_page.dart';
import '../components/button.dart';

class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 5),
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Rating',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins-Regular',
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(10, 130, 10, 10),
              child: Container(
                height: 470,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(height: 15),
                      const Text(
                        'Kennedy Okoro',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins-Bold',
                          color: Colors.black,
                        ),
                      ),
                      const Text(
                        '652-UKW',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins-Regular',
                          color: Colors.black26,
                        ),
                      ),
                      const Text(
                        'How is your trip?',
                        style: TextStyle(
                          fontSize: 26,
                          fontFamily: 'Poppins-Bold',
                          color: Colors.black,
                        ),
                      ),
                      const Text(
                        'Your feedback will help improve',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins-Regular',
                          color: Colors.black26,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/star_filled.png',
                                color: Colors.amber, height: 40, width: 40),
                            Image.asset('assets/star_filled.png',
                                color: Colors.amber, height: 40, width: 40),
                            Image.asset('assets/star_filled.png',
                                color: Colors.amber, height: 40, width: 40),
                            Image.asset('assets/star_filled.png',
                                color: Colors.amber, height: 40, width: 40),
                            Image.asset('assets/star.png',
                                color: Colors.amber, height: 40, width: 40),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.grey.shade100,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: TextField(
                                showCursor: true,
                                maxLines: 6,
                                decoration: InputDecoration(
                                  hintText: 'Additional comments...',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0, top: 10),
                    child: RoundedButton(
                        text: 'Submit Review',
                        press: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TipsPage()));
                        },
                        color: Colors.greenAccent,
                        textColor: Colors.white),
                  ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 75,
              left: MediaQuery.of(context).size.width * 0.5 - 30,
              child: const CircleAvatar(
                backgroundColor: Colors.grey, radius: 40.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 5),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Text(
                  'Rating',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins-Regular',
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(height: 60),
                Positioned(
                  top: -15, // Adjust this value to control overlap amount
                  left: MediaQuery.of(context).size.width * 0.5 - 30,
                  child: CircleAvatar(
                    backgroundColor: Colors.blueGrey.shade50,
                    radius: 40.0,
                  ),
                ), // Make this CircleAvatar to slightly overlap the Container below
                Container(
                  height: 470,
                  width: 380,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: const [
                              SizedBox(height: 15),
                              Text(
                                'Kennedy Okoro',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins-Bold',
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '652-UKW',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Poppins-Regular',
                                  color: Colors.black26,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'How is your trip?',
                            style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'Poppins-Bold',
                              color: Colors.black,
                            ),
                          ),
                          const Text(
                            'Your feedback will help improve',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Poppins-Regular',
                              color: Colors.black26,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('assets/star_filled.png', color: Colors.amber, height: 40, width: 40),
                                  Image.asset('assets/star_filled.png', color: Colors.amber, height: 40, width: 40),
                                  Image.asset('assets/star_filled.png', color: Colors.amber, height: 40, width: 40),
                                  Image.asset('assets/star_filled.png', color: Colors.amber, height: 40, width: 40),
                                  Image.asset('assets/star.png', color: Colors.amber, height: 40, width: 40,),
                                ],),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Colors.grey.shade100// Border radius
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: TextField(
                                  showCursor: true,
                                  maxLines: 6,
                                  decoration: InputDecoration(
                                    hintText: 'Additional comments...',
                                    // border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12.0, top: 10),
                            child: RoundedButton(
                                text: 'Submit Review',
                                press: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TipsPage()));
                                },
                                color: Colors.greenAccent,
                                textColor: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }}
*/


/*
*/