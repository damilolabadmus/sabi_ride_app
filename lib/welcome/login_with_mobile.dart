import 'package:flutter/material.dart';
import '../components/button.dart';
import 'package:sabi/welcome/phone_verification.dart';

class LoginMobile extends StatefulWidget {
  const LoginMobile({super.key});

  @override
  State<LoginMobile> createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.grey.shade100,
                  ),
                ),
              ],
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
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                const Text('Sign Up', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                                Container(height: 10, width: 15, color: Colors.white)
                              ],
                            ),
                            Column(
                              children: [
                                const Text('Sign in', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Container(height: 5, width: 45, color: Colors.amber),
                                )
                              ],
                            )
                          ],),
                      ),
                      const Divider(thickness: 0.5, color: Colors.black26),
                      const Padding(
                    padding: EdgeInsets.only(bottom: 8.0, top: 7),
                    child: Text(
                      'Login with your phone number',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins-Regular',
                        color: Colors.black,
                      ),
                    ),),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: RoundedButton(
                            text: '| +234 8026566766',
                            press: () {},
                            color: Colors.grey.shade100,
                            textColor: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: RoundedButton(
                            text: 'Next',
                            press: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PhoneVerification()));
                            },
                            color: Colors.greenAccent,
                            textColor: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]
      ),
    );
  }
}
