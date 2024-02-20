import 'package:flutter/material.dart';
import 'notification_page.dart';

class MessagingPage extends StatefulWidget {
  const MessagingPage({super.key});

  @override
  State<MessagingPage> createState() => _MessagingPageState();
}

class _MessagingPageState extends State<MessagingPage> {
  final TextEditingController _messageController = TextEditingController();
  final List<String> _messages = []; // Store messages

  void _sendMessage(String message) {
    setState(() {
      _messages.add(message); // Add outgoing message to the list
    });
    _messageController.clear();
  }
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 15), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 200),
          pageBuilder: (_, __, ___) => const NotificationPage(),
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
      body: Container(
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
                        'Kennedy Okoro',
                        style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Poppins-Bold',
                          color: Colors.white,
                        ),
                      ),
                      CircleAvatar(backgroundColor: Colors.blueGrey.shade50, radius: 30.0)
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                    child: _buildMessage(_messages[index]),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200, width: 1), // Border color
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.grey.shade100// Border radius
                      ),
                      child: TextField(
                        controller: _messageController,
                        showCursor: true,
                        decoration: const InputDecoration(
                          hintText: 'Type a message...',
                          border: InputBorder.none, // Remove default border
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  IconButton(
                    onPressed: () {
                      String message = _messageController.text;
                      if (message.isNotEmpty) {
                        _sendMessage(message);
                      }
                    },
                    icon: const Icon(Icons.send_outlined, color: Colors.greenAccent),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessage(String message) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.only(right: 16.0, left: 48.0, bottom: 8.0),
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Text(
          message,
          style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
