import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:Tinder_For_Gamers/Pages/swipe.dart';
import 'package:Tinder_For_Gamers/Pages/messages.dart';
import 'package:Tinder_For_Gamers/Pages/proflie.dart';
import 'package:Tinder_For_Gamers/Pages/gar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selected_index = 1;
  List<Widget> _widget_options = <Widget>[
    proflie(),
    Swipe_Card(),
    Messages(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: Text('TINDER FOR GAMERS'),
      // ),
      backgroundColor: Colors.black,
      body: Center(
        child: _widget_options.elementAt(_selected_index),
      ),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.black,
            primaryColor: HexColor('#39ff14'),
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: HexColor("#C71585")))),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                size: 35,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.gamepad,
                size: 35,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message_outlined,
                size: 35,
              ),
              title: Text(''),
            ),
          ],
          currentIndex: _selected_index,
          onTap: _onItemTap,
        ),
      ),
    );
  }
}
