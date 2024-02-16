import 'package:flutter/material.dart';
import 'package:sabi/welcome/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.amber,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      locale: const Locale('mn', 'MN'),
      home: const WelcomePage(),
    );
  }
}

