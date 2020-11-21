import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:hexcolor/hexcolor.dart';

class Swipe_Card extends StatefulWidget {
  @override
  _Swipe_CardState createState() => _Swipe_CardState();
}

class _Swipe_CardState extends State<Swipe_Card> with TickerProviderStateMixin {
  List<String> CardImages = [
    "images/rl.gif",
    "images/csgo.gif",
    "images/fortnite.gif",
    "images/r6s.gif",
    "images/valorant.gif",
    "images/warzone.gif",
  ];
  List<String> Name = [
    "Wistful_Peace_7",
    "amusty_cow",
    "spaz",
    "xqc",
    "lazy_af_7",
    "Sunless",
  ];
  List<String> Platform = [
    "Playstation",
    "PC",
    "Xbox",
    "Playstation",
    "PC",
    "Xbox"
  ];
  @override
  Widget build(BuildContext context) {
    CardController controller;
    return Container(
      // decoration: BoxDecoration(
      //     image: DecorationImage(
      //         image: AssetImage("images/giphy.gif"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Tinder for Gamers',
              style: TextStyle(
                  color: HexColor('#39ff14'),
                  fontSize: 60,
                  fontFamily: 'Dancing Script'),
              maxLines: 2,
            ),
            FlatButton(
              onPressed: () => {print('button pressed\n')},
              child: Container(
                height: MediaQuery.of(context).size.height * 0.36,
                child: TinderSwapCard(
                  orientation: AmassOrientation.BOTTOM,
                  totalNum: 6,
                  stackNum: 3,
                  swipeEdge: 4.0,
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                  maxHeight: MediaQuery.of(context).size.height * 0.3,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  minHeight: MediaQuery.of(context).size.height * 0.2,
                  cardBuilder: (context, index) => Card(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            '${CardImages[index]}',
                          ),
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      child: Text(
                        '${Name[index]}\n${Platform[index]}',
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                  ),
                  cardController: controller = CardController(),
                  swipeUpdateCallback:
                      (DragUpdateDetails details, Alignment align) {
                    if (align.x < 0) {
                    } else if (align.x < 0) {}
                  },
                  swipeCompleteCallback:
                      (CardSwipeOrientation orientation, int index) {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
