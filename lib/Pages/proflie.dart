import 'package:Tinder_For_Gamers/Pages/test0.dart';
import 'package:flutter/material.dart';
import 'package:Tinder_For_Gamers/pages/test.dart';

class proflie extends StatefulWidget {
  @override
  _proflieState createState() => _proflieState();
}

class _proflieState extends State<proflie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: test()
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 500.0,
            flexibleSpace: FlexibleSpaceBar(
              background: test(),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                test0(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
