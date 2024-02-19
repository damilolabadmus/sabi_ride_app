import 'package:flutter/material.dart';

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

    final List<IconData> cardIcon = [
      Icons.card_giftcard,
      Icons.paypal,
      Icons.local_atm_outlined,
    ];

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
}

