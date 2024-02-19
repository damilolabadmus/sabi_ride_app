import 'package:flutter/material.dart';
import 'package:sabi/welcome/invitation_list.dart';
import '../components/button.dart';

class InvitationPage extends StatefulWidget {
  const InvitationPage({super.key});

  @override
  State<InvitationPage> createState() => _InvitationPageState();
}

class _InvitationPageState extends State<InvitationPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold (
        body: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.yellow.shade500,
                      padding: const EdgeInsets.only(top: 12.0, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.arrow_back_ios),
                                color: Colors.white,
                                iconSize: 30,
                                onPressed: () {
                                  Navigator.pop(context);
                                },),
                              const Text(
                                'Invite Friends',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Image.asset('assets/gift_box.png', height: 200, width: 250),
                          ),
                          Column(children: const [
                            Text(
                              'Invite Friends',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'When your friend sign up with\nyour referral code',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],)
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.grey.shade100,
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              'Share Your Invite Code',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Poppins-Bold',
                                color: Colors.white,
                              ),
                            ),
                            const TextField(showCursor: true,
                              maxLines: 2,
                              decoration: InputDecoration(
                                  hintText: 'Y045KG',
                                  hintStyle: TextStyle(color: Colors.black, fontSize: 20)
                                // border: InputBorder.none,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0, top: 10),
                              child: RoundedButton(
                                  text: 'Submit Review',
                                  press: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const InvitationList()));
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
            ]
        ),
      ),
    );
}}
