import 'package:flutter/material.dart';
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

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 200),
          pageBuilder: (_, __, ___) => AccountPage(),
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                    ListTile(
                      // shape: Border.all(width: 2, color: Colors.black, style: BorderStyle.solid),
                      leading: CircleAvatar(
                          backgroundColor: Colors.blueGrey.shade50,
                          radius: 25.0),
                      title: const Text('Ngozi Chukwudi', style: TextStyle(color: Colors.black),),
                      subtitle: const Text('Gold Member', style: TextStyle(color: Colors.black54),),
                      trailing: IconButton(icon: const Icon(Icons.navigate_next, color: Colors.grey, size: 30), onPressed: () {},),
                    ),
                    Card(
                      elevation: 1,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        const Text('Notifications', style: TextStyle(fontSize: 16)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.navigate_next))
                      ],),
                    ),
                      Card(
                      elevation: 1,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        const Text('Security', style: TextStyle(fontSize: 16)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.navigate_next))
                      ],),
                    ),
                      Card(
                      elevation: 1,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        const Text('Language', style: TextStyle(fontSize: 16)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.navigate_next))
                      ],),
                    ),
                      const SizedBox(height: 10),
                      Card(
                        elevation: 1,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Clear cache', style: TextStyle(fontSize: 16)),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.navigate_next))
                          ],),
                      ),
                      Card(
                        elevation: 1,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Terms & Privacy Policy', style: TextStyle(fontSize: 16)),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.navigate_next))
                          ],),
                      ),
                      Card(
                        elevation: 1,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Contact us', style: TextStyle(fontSize: 16)),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.navigate_next))
                          ],),
                      ),
                      const SizedBox(height: 15),

                      /*
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
                                const Text('Okay'),
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
*/
                    SizedBox(
                      width: 400,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => AccountPage()));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        child: const Text('Log Out', style: TextStyle(color: Colors.black26, fontSize: 18, fontWeight: FontWeight.w600),),
                      ),
                    ),
                  ],),
                ),
              ),
            ),
          ),
        ],
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
