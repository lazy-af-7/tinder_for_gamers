import 'package:flutter/material.dart';
import 'package:Tinder_For_Gamers/commons/profliebig1.dart';

class gar0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        color: Colors.black,
        child: Table(
          children: [
            TableRow(
              children: [
                profilebig1(
                    img: Image.asset(
                  "assets/images/cod_card.jpg",
                )),
                profilebig1(
                    img: Image.asset(
                  "assets/images/fortnite_card.jpg",
                )),
                // profliebig(),
              ],
            ),
            TableRow(
              children: [
                profilebig1(
                    img: Image.asset(
                  "assets/images/rocket_league_card.jpg",
                )),
                profilebig1(
                    img: Image.asset(
                  "assets/images/valorant_card.jpg",
                )),
                // profliebig(),
              ],
            ),
            TableRow(
              children: [
                profilebig1(
                    img: Image.asset(
                  "assets/images/r6s.jpeg",
                )),
                profilebig1(
                    img: Image.asset(
                  "assets/images/csgo_card.jpg",
                )),
                // profliebig(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
