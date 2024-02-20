import 'package:flutter/material.dart';
import 'package:sabi/components/button.dart';
import 'package:sabi/welcome/wallet_page.dart';
import 'package:flutter/cupertino.dart';

class ViewBirthday extends StatefulWidget {
  const ViewBirthday({super.key});

  @override
  State<ViewBirthday> createState() => _ViewBirthdayState();
}

class _ViewBirthdayState extends State<ViewBirthday> {
  @override
  Widget build(BuildContext context) {
    final List<String> accountItems = [
      'Level', 'Name',
      'Email', 'Gender',
      'Birthday',
      'Phone number'
    ];

    final List<String> personalInfo = [
      'Gold Member', 'Emeka Chioma',
      'freeslad88@gmail.com', 'Male',
      'April 16, 1988',
      '+234 9031193287'
    ];

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 200),
          pageBuilder: (_, __, ___) => WalletPage(),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.amber.shade400,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [const Text('My Account',
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Poppins-Bold',
                      color: Colors.white,
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(
                          backgroundColor: Colors.blueGrey.shade50,
                          radius: 30.0),
                    ),],),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Card(
                        elevation: 1,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Level', style: TextStyle(fontSize: 16, color: Colors.black)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Gold Member', style: TextStyle(fontSize: 16, color: Colors.black26)),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.navigate_next))
                              ],)
                          ],),
                      ),
                      const SizedBox(height: 35),
                      Card(
                        elevation: 1,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Name', style: TextStyle(fontSize: 16, color: Colors.black)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Emeka Chioma', style: TextStyle(fontSize: 16, color: Colors.black26)),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.navigate_next))
                              ],)
                          ],),
                      ),
                      Card(
                        elevation: 1,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Email', style: TextStyle(fontSize: 16, color: Colors.black)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('freeslab88@gmail.com', style: TextStyle(fontSize: 16, color: Colors.black26)),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.navigate_next))
                              ],)
                          ],),
                      ),
                      const SizedBox(height: 10),
                      Card(
                        elevation: 1,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Gender', style: TextStyle(fontSize: 16, color: Colors.black)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Male', style: TextStyle(fontSize: 16, color: Colors.black26)),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.navigate_next))
                              ],)
                          ],),
                      ),
                      Card(
                        elevation: 1,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Birthday', style: TextStyle(fontSize: 16, color: Colors.black)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('April 16 1998', style: TextStyle(fontSize: 16, color: Colors.black26)),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.navigate_next))
                              ],)
                          ],),
                      ),
                      Card(
                        elevation: 1,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Phone number', style: TextStyle(fontSize: 16, color: Colors.black)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('+234 8031193287', style: TextStyle(fontSize: 16, color: Colors.black26)),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.navigate_next))
                              ],)
                          ],),
                      ),
                      const SizedBox(height: 15),
                      RoundedButton(
                        text: 'Save',
                        press: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                color: Colors.white, // Background color of the bottom sheet
                                height: 200,
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Birthday',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                      ),
                                      icon: const Icon(
                                        CupertinoIcons.multiply,
                                        size: 30,
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        color: Colors.greenAccent,
                        textColor: Colors.white,
                      ),
                    ],),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


/* Expanded(
    child: Container(
      color: Colors.white,
      child: Column(
        children: [
          ListView.builder(
            itemCount: accountItems.length,
            itemBuilder: (BuildContext context, int index) {
              if (index < accountItems.length && index < personalInfo.length) {
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
                            Text(accountItems[index]),
                            Row(
                              children: [
                                Text(personalInfo[index], style: const TextStyle(color: Colors.grey),),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.navigate_next),
                                )
                              ],
                            )
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
          RoundedButton(
            text: 'Save',
            press: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    color: Colors.white, // Background color of the bottom sheet
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Birthday             X',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Close'),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            color: Colors.greenAccent,
            textColor: Colors.white,
          ),
        ],
      ),
    ),
  ),
*/