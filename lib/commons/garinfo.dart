import 'package:flutter/material.dart';
import 'package:Tinder_For_Gamers/commons/roundedimage.dart';
import 'package:Tinder_For_Gamers/styleguide/textstyle.dart';

class garinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedImage(
            imagePath: "assets/images/gar.jpg",
            size: Size.fromWidth(120.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Wistful_Peace_7",
                style: whiteNameTextStyle,
              ),
              Text(
                ", 20",
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
                " Mars ",
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
                " In Peace\n ",
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
