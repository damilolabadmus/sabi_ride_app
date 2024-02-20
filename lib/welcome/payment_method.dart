import 'package:flutter/material.dart';
import 'package:sabi/components/button.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      '**** **** **** 5967',
      'Wilson.casper@bernice.info',
      '**** **** **** 3461',
    ];

    final List<String> images = [
      'assets/visa_card.png',
      'assets/paypal_logo.png',
      'assets/mastercard.png',
    ];


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
                      const SizedBox(height: 25),
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
                              'Payment Method',
                              style: TextStyle(
                                fontSize: 26,
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
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 14.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: 300,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Icon(Icons.add_circle_sharp, color: Colors.white),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0, top: 2),
                                child:
                                Text('Add New Method', style: TextStyle(color: Colors.white,
                                        fontSize: 16)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned.fill(
              child: Align(alignment: Alignment.center,child: Container(height: 150, width: 370, decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white),
                  child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.greenAccent,
                  radius: 30.0,
                  child: Icon(Icons.currency_exchange),
                ),
                title: const Text('Cash', style: TextStyle(color: Colors.black),),
                subtitle: const Text('Default Payment Method', style: TextStyle(color: Colors.black45, fontSize: 24),),
                trailing: IconButton(icon: const Icon(Icons.navigate_next, color: Colors.grey, size: 12), onPressed: () {},),
              ),
              ),)),
          const SizedBox(height: 15),
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
                              leading: const CircleAvatar(
                                backgroundColor: Colors.greenAccent,
                                radius: 30.0,
                                child: Icon(Icons.monetization_on_rounded, color: Colors.white),
                              ),
                              title: const Text('Cash', style: TextStyle(color: Colors.black)),
                              subtitle: const Text('Default Payment Method', style: TextStyle(color: Colors.black54)),
                              trailing: IconButton(icon: const Icon(Icons.navigate_next, color: Colors.grey, size: 12), onPressed: () {}),
                            ),
                            const Divider(thickness: 0.5, color: Colors.black26),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: items.length,
                              itemBuilder: (BuildContext context, int index) {
                                if (index < items.length) {
                                  return Column(
                                    children: [
                                      Card(
                                        elevation: 2,
                                        color: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Image.asset(images[index], height: 40, width: 40,),
                                              // Icon(cardIcon[index], size: 35),
                                              Text(items[index], style: const TextStyle(fontSize: 16),),
                                              items.length == 1 ? const Icon(Icons.check_circle_rounded, color: Colors.green) : const Text(''),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
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

/*
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.amber,
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        },),
                      const Text(
                        'Done',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins-Regular',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'Payment Method',
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Poppins-Bold',
                      color: Colors.white,
                    ),
                  ),
                  // CircleAvatar(backgroundColor: Colors.blueGrey.shade50, radius: 30.0),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                          backgroundColor: Colors.greenAccent,
                          radius: 30.0,
                        child: Icon(Icons.currency_exchange),
                      ),
                      title: const Text('Cash', style: TextStyle(color: Colors.black),),
                      subtitle: const Text('Default Payment Method', style: TextStyle(color: Colors.black45, fontSize: 24),),
                      trailing: IconButton(icon: const Icon(Icons.navigate_next, color: Colors.grey, size: 12), onPressed: () {},),
                    ),
                    const SizedBox(height: 5),
                    ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (BuildContext context, int index) {
                        if (index < items.length && index < cardIcon.length) {
                          return Column(
                            children: [
                              Card(
                                elevation: 2,
                                color: Colors.grey.shade100,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.green, width: 2), // Green border
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Icon(cardIcon[index]),
                                        Text(items[index]),
                                        items.length == 1 ? const Icon(Icons.check_circle_rounded, color: Colors.green) : const Text(''),
                                      ],),
                                  ),
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
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(Icons.add_circle, color: Colors.white),
                            SizedBox(width: 5),
                            Text('Add New Method'),
                          ],
                        )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );}
*/}
}

