import 'package:flutter/material.dart';
import 'package:Tinder_For_Gamers/commons/roundedimage.dart';
import 'package:Tinder_For_Gamers/styleguide/textstyle.dart';

class myinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedImage(
            imagePath: "assets/images/star.jpg",
            size: Size.fromWidth(120.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Spock",
                style: whiteNameTextStyle,
              ),
              Text(
                ", 24",
                style: whiteNameTextStyle,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/icons/location_pin.png",
                width: 20.0,
                color: Colors.white,
              ),
              Text(
                " Starship Enterprise ",
                style: whiteSubHeadingTextStyle,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                " Hi, my name is Spock\n I run the starship enterprise\n Wanna play some Games??\n ",
                style: whiteSubHeadingTextStyle,
                maxLines: 3,
              ),
            ],
          )
        ],
      ),
    );
  }
}
