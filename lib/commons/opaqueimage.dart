import 'package:flutter/material.dart';
import 'package:Tinder_For_Gamers/styleguide/colors.dart';

class OpqueImage extends StatelessWidget {
  final imageUrl;
  const OpqueImage({Key key, @required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          imageUrl,
          width: double.maxFinite,
          height: double.maxFinite,
          fit: BoxFit.fill,
        ),
        Container(
          color: primaryTextColor.withOpacity(0.75),
        )
      ],
    );
  }
}
