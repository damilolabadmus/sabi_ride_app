import 'package:flutter/material.dart';
import 'package:sabi/welcome/messaging_page.dart';

class LocationHistory extends StatefulWidget {
  const LocationHistory({super.key});

  @override
  State<LocationHistory> createState() => _LocationHistoryState();
}

class _LocationHistoryState extends State<LocationHistory> {

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
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
                    child: Container(
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'History',
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins-Regular',
                                      color: Colors.white,
                                      letterSpacing: 2
                                  ),
                                ),
                                IconButton(onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 35))
                              ],
                            ),
                          ],),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.grey.shade200,
                  ),
                ),
              ],
            ),
            Positioned.fill(
              child: Column(
                children: [
                  const SizedBox(height: 150),
                  Container(
                    width: 370,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Color of the shadow
                          spreadRadius: 3, // Spread radius
                          blurRadius: 5, // Blur radius
                          offset: const Offset(0, 3), // Offset in x and y directions
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 15, bottom: 10),
                          child: Column(
                            children: const [
                            Icon(Icons.radio_button_checked, color: Colors.greenAccent, size: 25),
                            Padding(
                              padding: EdgeInsets.only(left: 5.0),
                              child: Icon(Icons.signal_cellular_alt_1_bar, color: Colors.black54, size: 10),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.0),
                              child: Icon(Icons.signal_cellular_alt_1_bar, color: Colors.black54, size: 10),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.0),
                              child: Icon(Icons.signal_cellular_alt_1_bar, color: Colors.black54, size: 10),
                            ),
                            Icon(Icons.place, color: Colors.red, size: 25),
                          ],),
                        ),
                        const Divider(
                          height: 3,
                          thickness: 1,
                          color: Colors.black12,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 7.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text('Confirm', style: TextStyle(color: Colors.black54)),
                              Icon(Icons.arrow_forward_ios_rounded, color: Colors.black38, size: 17,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 370,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Color of the shadow
                          spreadRadius: 3, // Spread radius
                          blurRadius: 5, // Blur radius
                          offset: const Offset(0, 3), // Offset in x and y directions
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 15, bottom: 10),
                          child: Column(
                            children: const [
                              Icon(Icons.radio_button_checked, color: Colors.greenAccent, size: 25),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0),
                                child: Icon(Icons.signal_cellular_alt_1_bar, color: Colors.black54, size: 10),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0),
                                child: Icon(Icons.signal_cellular_alt_1_bar, color: Colors.black54, size: 10),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0),
                                child: Icon(Icons.signal_cellular_alt_1_bar, color: Colors.black54, size: 10),
                              ),
                              Icon(Icons.place, color: Colors.red, size: 25),
                            ],),
                        ),
                        const Divider(
                          height: 3,
                          thickness: 1,
                          color: Colors.black12,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 7.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text('Confirm', style: TextStyle(color: Colors.black54)),
                              Icon(Icons.arrow_forward_ios_rounded, color: Colors.black38, size: 17,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 370,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Color of the shadow
                          spreadRadius: 3, // Spread radius
                          blurRadius: 5, // Blur radius
                          offset: const Offset(0, 3), // Offset in x and y directions
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 15, bottom: 10),
                          child: Column(
                            children: const [
                              Icon(Icons.radio_button_checked, color: Colors.greenAccent, size: 25),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0),
                                child: Icon(Icons.signal_cellular_alt_1_bar, color: Colors.black54, size: 10),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0),
                                child: Icon(Icons.signal_cellular_alt_1_bar, color: Colors.black54, size: 10),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0),
                                child: Icon(Icons.signal_cellular_alt_1_bar, color: Colors.black54, size: 10),
                              ),
                              Icon(Icons.place, color: Colors.red, size: 25),
                            ],),
                        ),
                        const Divider(
                          height: 3,
                          thickness: 1,
                          color: Colors.black12,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 7.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text('Confirm', style: TextStyle(color: Colors.black54)),
                              Icon(Icons.arrow_forward_ios_rounded, color: Colors.black38, size: 17,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]
      ),
    );
  }
}
