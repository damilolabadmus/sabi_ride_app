import 'package:flutter/material.dart';
import 'package:sabi/welcome/invitation_page.dart';
import '../components/button.dart';

class TipsPage extends StatefulWidget {
  const TipsPage({super.key});

  @override
  State<TipsPage> createState() => _TipsPageState();
}

class _TipsPageState extends State<TipsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 5),
        child: Stack(
          children: [
            Row(children: [
              IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.white,iconSize: 25,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
              const Text(
                'Tips',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins-Regular',
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),],),
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
                    'Wow! A 5 star !',
                    style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'Poppins-Bold',
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    'Choose other amount',
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
                        CircleAvatar(
                          backgroundColor: Colors.blueGrey.shade100,
                          radius: 40.0,
                          child: const Text(
                            '1',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.green.shade400,
                          radius: 40.0,
                          child: const Text(
                            '2',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.blueGrey.shade100,
                          radius: 40.0,
                          child: const Text(
                            '3',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      'Choose other amount',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins-Regular',
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                        decorationThickness: 2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0, top: 10),
                    child: RoundedButton(
                        text: 'Done',
                        press: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const InvitationPage()));
                        },
                        color: Colors.greenAccent,
                        textColor: Colors.white),
                  ),
                  const Text(
                    'Maybe next time',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins-Regular',
                      color: Colors.black26,
                    ),
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
     ] ),)
    );
  }
}


/*
class _TipsPageState extends State<TipsPage> {
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
                  'Tips',
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
                            'Wow! A 5 star !',
                            style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'Poppins-Bold',
                              color: Colors.black,
                            ),
                          ),
                          const Text(
                            'Choose other amount',
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
                                CircleAvatar(
                                  backgroundColor: Colors.blueGrey.shade100,
                                  radius: 40.0,
                                  child: const Text('1', style: TextStyle(color: Colors.black, fontSize: 16),),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.green.shade400,
                                  radius: 40.0,
                                  child: const Text('2', style: TextStyle(color: Colors.black, fontSize: 16),),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.blueGrey.shade100,
                                  radius: 40.0,
                                  child: const Text('3', style: TextStyle(color: Colors.black, fontSize: 16),),
                                ),
                              ],),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            child: Text(
                              'Choose other amount',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins-Regular',
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.black,
                                decorationThickness: 2,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12.0, top: 10),
                            child: RoundedButton(
                                text: 'Done',
                                press: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const InvitationPage()));
                                },
                                color: Colors.greenAccent,
                                textColor: Colors.white),
                          ),
                          const Text(
                           'Maybe next time',
                           style: TextStyle(
                             fontSize: 16,
                             fontFamily: 'Poppins-Regular',
                             color: Colors.black26),)
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

*/
/*
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.amber,
              padding: const EdgeInsets.all(15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },),
                  const Text(
                    'Tips',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins-Regular',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 370,
                  height: 380,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(backgroundColor: Colors.blueGrey.shade50, radius: 30.0),
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
                        'Wow! A 5 star !',
                        style: TextStyle(
                          fontSize: 26,
                          fontFamily: 'Poppins-Bold',
                          color: Colors.black,
                        ),
                      ),
                      const Text(
                        'Choose other amount',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins-Regular',
                          color: Colors.black26,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black54,
                          decorationThickness: 0.5,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.grey.shade100// Border radius
                          ),
                          child: const TextField(
                            showCursor: true,
                            maxLines: 4,
                            decoration: InputDecoration(
                              hintText: 'Additional comments...',
                              // border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: RoundedButton(
                            text: 'Submit Review',
                            press: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const InvitationPage()));
                            },
                            color: Colors.greenAccent,
                            textColor: Colors.white),
                      ),
                      const Text(
                        'Maybe next time',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins-Regular',
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
*//*

  }
}
*/
