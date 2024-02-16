import 'package:flutter/material.dart';
import '../components/button.dart';

class MessagingPage extends StatefulWidget {
  const MessagingPage({super.key});

  @override
  State<MessagingPage> createState() => _MessagingPageState();
}

class _MessagingPageState extends State<MessagingPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 700), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 200),
          pageBuilder: (_, __, ___) => const MessagingPage(),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        ),
      );
    });

    return Scaffold(
      body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.arrow_back_ios, color: Colors.white, size:25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Kennedy Okoro',
                                style: TextStyle(
                                    fontSize: 28,
                                    fontFamily: 'Poppins-Bold',
                                    color: Colors.white,
                                ),
                              ),
                              CircleAvatar(backgroundColor: Colors.blueGrey.shade50, radius: 30.0)
                            ],
                          ),
                        ],),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.grey.shade200,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton(text: 'Type a message', press: () {}, color: Colors.white, textColor: Colors.black26),
                            IconButton(onPressed: () {}, icon: const Icon(Icons.send_outlined, color: Colors.greenAccent))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),]
      ),
    );
  }
}
