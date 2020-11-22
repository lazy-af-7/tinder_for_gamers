import 'package:flutter/material.dart';
import 'Pages/login_page.dart';
import 'Pages/home.dart';
import 'Pages/chat.dart';
import 'Pages/gar.dart';

void main() {
  runApp(Tinder_For_Gamers());
}

class Tinder_For_Gamers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Login_Page(),
        '/home': (context) => Home(),
        '/chat': (context) => Chat(),
        '/wistful': (context) => gar(),
      },
    );
  }
}
