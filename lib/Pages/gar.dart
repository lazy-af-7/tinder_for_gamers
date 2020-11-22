import 'package:Tinder_For_Gamers/Pages/gar0.dart';
import 'package:flutter/material.dart';
import 'package:Tinder_For_Gamers/Pages/gar1.dart';

class gar extends StatefulWidget {
  @override
  _garState createState() => _garState();
}

class _garState extends State<gar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: test()
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 500.0,
            flexibleSpace: FlexibleSpaceBar(
              background: gar1(),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                gar0(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
