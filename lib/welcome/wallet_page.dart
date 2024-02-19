import 'package:flutter/material.dart';
import 'package:sabi/welcome/payment_method.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {

    final List<String> walletItems = [
      'Payment Methods',
      'Coupon',
      'Integral Mall'
    ];

    final List<String> walletInfo = [
      ' ', '3', '4500'
    ];

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 200),
          pageBuilder: (_, __, ___) => const PaymentMethod(),
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
                            const Icon(Icons.arrow_back_ios, color: Colors.white, size:25),
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
                                IconButton(onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down))
                              ],
                            ),
                          ],),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.grey.shade200,
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
                     children: [
                       ListTile(
                         leading: CircleAvatar(
                         backgroundColor: Colors.blueGrey.shade50,
                         radius: 20.0),
                         title: const Text('Cash', style: TextStyle(color: Colors.black),),
                         subtitle: const Text('Default Payment Method', style: TextStyle(color: Colors.black54),),
                         trailing: IconButton(icon: const Icon(Icons.navigate_next, color: Colors.grey, size: 12), onPressed: () {},),
                       ),
                       const Divider(thickness: 0.5, color: Colors.black26),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                         Column(children: const [
                           Text('BALANCE', style: TextStyle(color: Colors.black54),),
                           Text('N2500', style: TextStyle(color: Colors.red)),
                         ],),
                         Column(children: const [
                           Text('EXPIRES', style: TextStyle(color: Colors.black54),),
                           Text('09/21', style: TextStyle(color: Colors.red)),
                         ],)],),
                       ListView.builder(
                         itemCount: walletItems.length,
                         itemBuilder: (BuildContext context, int index) {
                           if (index < walletItems.length && index < walletInfo.length) {
                             return Column(
                               children: [
                                 Card(
                                   elevation: 2,
                                   color: Colors.white,
                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         Text(walletItems[index]),
                                         Row(children: [
                                           Text(walletInfo[index], style: const TextStyle(color: Colors.grey),),
                                           IconButton(
                                               onPressed: () {},
                                               icon: const Icon(Icons.navigate_next))
                                         ],)
                                       ],),
                                   ),
                                   ),
                                const SizedBox(
                                  height: 5,
                                 ),
                                ],
                              );
                            } else {
                          return const SizedBox();
                         }
                       },
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
