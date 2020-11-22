import 'package:flutter/material.dart';
import 'package:Tinder_For_Gamers/commons/garinfo.dart';
import 'package:Tinder_For_Gamers/commons/opaqueimage.dart';
import 'package:Tinder_For_Gamers/styleguide/textstyle.dart';

class gar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Stack(
                children: <Widget>[
                  OpqueImage(
                    imageUrl: "images/martian.jpg",
                  ),
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "My Profile",
                              textAlign: TextAlign.left,
                              style: headingTextStyle,
                            ),
                          ),
                          garinfo(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Expanded(
            //   flex: 5,
            //   child: Container(
            //     color: Colors.white,
            //     child: Table(
            //       children: [
            //         TableRow(
            //           children: [
            //             profilebig(
            //                 img: Image.asset(
            //               "assets/images/cod_card.jpg",
            //             )),
            //             profilebig(
            //                 img: Image.asset(
            //               "assets/images/fortnite_card.jpg",
            //             )),
            //             // profliebig(),
            //           ],
            //         ),
            //         TableRow(
            //           children: [
            //             profilebig(
            //                 img: Image.asset(
            //               "assets/images/rocket_league_card.jpg",
            //             )),
            //             profilebig(
            //                 img: Image.asset(
            //               "assets/images/valorant_card.jpg",
            //             )),
            //             // profliebig(),
            //           ],
            //         ),
            //         TableRow(
            //           children: [
            //             profilebig(
            //                 img: Image.asset(
            //               "assets/images/r6s.jpeg",
            //             )),
            //             profilebig(
            //                 img: Image.asset(
            //               "assets/images/csgo_card.jpg",
            //             )),
            //             // profliebig(),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ],
    );
  }
}
