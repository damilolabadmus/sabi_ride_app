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

    Future.delayed(const Duration(seconds: 3), () {
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
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back_ios),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'My Wallet',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins-Regular',
                                color: Colors.white,
                                letterSpacing: 2,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.keyboard_arrow_down, size: 35, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
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
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.blueGrey.shade50,
                            radius: 20.0,
                          ),
                          title: const Text('Cash', style: TextStyle(color: Colors.black)),
                          subtitle: const Text('Default Payment Method', style: TextStyle(color: Colors.black54)),
                          trailing: IconButton(icon: const Icon(Icons.navigate_next, color: Colors.grey, size: 12), onPressed: () {}),
                        ),
                        const Divider(thickness: 0.5, color: Colors.black26),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: const [
                                  Text('BALANCE', style: TextStyle(color: Colors.black54)),
                                  Text('N2500', style: TextStyle(color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Column(
                                children: const [
                                  Text('EXPIRES', style: TextStyle(color: Colors.black54)),
                                  Text('09/21', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 28)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
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
                                          Row(
                                            children: [
                                              Text(walletInfo[index], style: const TextStyle(color: Colors.grey)),
                                              IconButton(
                                                onPressed: () {},
                                                icon: const Icon(Icons.navigate_next),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
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
              )))
        ],
      ),
    );
  }
}
