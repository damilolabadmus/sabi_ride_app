import 'package:flutter/material.dart';
import '../components/button.dart';
import '../welcome/login_with_mobile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RoundedButton(
                        text: 'Connect with Facebook', 
                        press: () {},
                        color: Colors.blue,
                        textColor: Colors.white),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8.0, top: 7),
                      child: Text(
                        'Select it manually',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins-Regular',
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
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
                                  const Text('Sign Up', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Container(height: 5, width: 45, color: Colors.amber),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  const Text('Sign in', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
                                  Container(height: 10, width: 15, color: Colors.white)
                                ],
                              )
                            ],),
                        ),
                        const Divider(thickness: 0.5, color: Colors.black26),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 6.0, top: 10),
                          child: RoundedButton(
                              text: 'name@example.com',
                              press: () {},
                              color: Colors.grey.shade100,
                              textColor: Colors.black26),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: RoundedButton(
                              text: '| +234 Mobile Number',
                              press: () {},
                              color: Colors.grey.shade100,
                              textColor: Colors.black26),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: RoundedButton(
                              text: 'Sign Up',
                              press: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginMobile()));
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



/*Stack(
        children: <Widget>[
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 370,
                height: 380,
                decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.white,),
              ),
            ),
          ),
        ],
      ),*/