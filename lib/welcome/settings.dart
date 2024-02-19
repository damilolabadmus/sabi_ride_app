import 'package:flutter/material.dart';
import 'package:sabi/components/button.dart';
import 'package:sabi/welcome/account_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {

    final List<String> items = [
      'Notifications', 'Security',
      'Language', 'Clear cache',
      'Terms & Privacy Policy',
      'Contact Us'
    ];

    Future.delayed(const Duration(minutes: 1000), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 700),
          pageBuilder: (_, __, ___) => const AccountPage(),
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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.amber.shade400,
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                  },),
                  const Text('Settings',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Poppins-Bold',
                    color: Colors.white,
                  ),
                    ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                    ListTile(
                      // shape: Border.all(width: 2, color: Colors.black, style: BorderStyle.solid),
                      leading: CircleAvatar(
                          backgroundColor: Colors.blueGrey.shade50,
                          radius: 25.0),
                      title: const Text('Ngozi Chukwudi', style: TextStyle(color: Colors.black),),
                      subtitle: const Text('Gold Member', style: TextStyle(color: Colors.black54),),
                      trailing: IconButton(icon: const Icon(Icons.navigate_next, color: Colors.grey, size: 15), onPressed: () {},),
                    ),
                    ListView.builder(
                      itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 2,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            const Text('Okay'),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.navigate_next))
                          ],),
                        ),
                      );
                    }),
/*
                    ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (BuildContext context, int index) {
                        if (index < items.length) {
                          return Column(
                            children: [
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
*/
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
                        ),
                        child: const Text('Log Out', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w800),),
                      ),
                    ),
                  ],),
                ),
              ),
            ),
          ],
        ),
      ),
    );  }


/*
  return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.amber,
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
                  const Text(
                    'Settings',
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
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueGrey.shade50,
                      radius: 20.0),
                    title: const Text('Ngozi Chukwudi', style: TextStyle(color: Colors.black),),
                    subtitle: const Text('Gold Member', style: TextStyle(color: Colors.black54),),
                    trailing: IconButton(icon: const Icon(Icons.navigate_next, color: Colors.grey, size: 12), onPressed: () {},),
                  ),
                  ListView.builder(
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
                                child: Row(children: [
                                  Text(items[index]),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.navigate_next))
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
          ],
        ),
      ),
    );  }
*/

}
