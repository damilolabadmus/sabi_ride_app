import 'package:flutter/material.dart';
import 'package:sabi/components/button.dart';
import 'package:sabi/welcome/settings.dart';

class InvitationList extends StatefulWidget {
  const InvitationList({super.key});

  @override
  State<InvitationList> createState() => _InvitationListState();
}

class _InvitationListState extends State<InvitationList> {

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;

    final List<String> titles = [
      'Johnny Rios',
      'Alfred Hodges',
      'Samuel Hammond',
      'Dora Hines',
      'Carolyn Francis',
      'Isaiah McGee',
      'Mark Holmes',
      'Russell McGuire'
    ];

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 200),
          pageBuilder: (_, __, ___) => const SettingsPage(),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(children: [
                  const SizedBox(height: 15),
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },),
                  const Text(
                    'Invite Friends',
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Poppins-Bold',
                      color: Colors.white,
                    ),
                  ),
                ],),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(Icons.search, color: Colors.white),
                      Padding(
                        padding: EdgeInsets.only(left: 5.0, top: 2),
                        child: Text('Search', style: TextStyle(color: Colors.white),),
                      )
                    ],
                  ),
                )
                // RoundedButton(text: 'Search', press: (){}, color: const Color.fromRGBO(255, 255, 255, 0.5), textColor: Colors.white),
                // CircleAvatar(backgroundColor: Colors.blueGrey.shade50, radius: 30.0),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.white,
                child: ListView.builder(
                  itemCount: titles.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (index < titles.length) {
                      return Column(
                        children: [
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(vertical: 8.0), // Add vertical padding
                            leading: CircleAvatar(
                              radius: 30.0,
                              backgroundColor: Colors.grey.shade200,
                            ),
                            title: Text(titles[index], style: const TextStyle(color: Colors.black),),
                            trailing: Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: isChecked == true ? Colors.green : Colors.grey.shade200,
                                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                              ),
                              child: IconButton(onPressed: () {},
                                icon: isChecked == false ? const Icon(Icons.add): const Icon(Icons.check),
                                alignment: Alignment.center,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                isChecked = true;
                              });
                              },
                            ),
                          Container(
                            height: 1, // Height of the divider line
                            color: Colors.grey.shade200, // Color of the divider line
                          ),
                        ],
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );  }
}
