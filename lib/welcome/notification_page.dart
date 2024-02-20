import 'package:flutter/material.dart';
import 'package:sabi/welcome/ratings_page.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  final List<IconData> avatarIcon = [
    Icons.done,
    Icons.add_card,
    Icons.add_card,
    Icons.cancel,
    Icons.system_update_tv_sharp,
    Icons.add_card,
  ];

final List<Color> iconsColor = [
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.greenAccent,
    Colors.red,
    Colors.black,
    Colors.greenAccent,
];

 final List<String>? titles = [
   'System', 'Promotion', 'Promotion', 'System', 'System', 'Promotion'
 ];

 final List<String>? subTitles = [
   'Your booking #1234 has been suc..',
   'Invite friend - Get 3 coupons each!'
   'Invite friend - Get 3 coupons each!',
   'Your booking #1205 has been can..',
   'Thank you! Your transaction is com..',
   'Invite friend - Get 3 coupons each!'
 ];

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 200),
          pageBuilder: (_, __, ___) => const Rating(),
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
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Notifications',
                      style: TextStyle(
                        fontSize: 28,
                        fontFamily: 'Poppins-Bold',
                        color: Colors.white,
                      ),
                    ),
                    CircleAvatar(
                        backgroundColor: const Color.fromRGBO(255, 255, 255, 0.5),
                        radius: 20.0,
                        child: IconButton(icon: const Icon(Icons.delete),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Rating()));
                          },))
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8),
              child: Container(
                color: Colors.white,
                child: ListView.builder(
                  itemCount: titles?.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (index < titles!.length && index < subTitles!.length && index < avatarIcon.length && index < iconsColor.length) {
                      return Column(
                        children: [
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(vertical: 8.0), // Add vertical padding
                            leading: CircleAvatar(
                              radius: 20.0,
                              backgroundColor: Colors.white.withOpacity(0.8),
                              child: Icon(avatarIcon[index], color: iconsColor[index]),
                            ),
                            title: Text(titles![index]),
                            subtitle: Text(subTitles![index]),
                            onTap: () {},
                          ),
                          Container(
                            height: 1, // Height of the divider line
                            color: Colors.grey.shade300, // Color of the divider line
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
    );
  }
}
