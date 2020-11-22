import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final String imagePath;
  final Size size;

  const RoundedImage({
    Key key,
    @required this.imagePath,
    this.size = const Size.fromWidth(200.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return ClipOval(
    //   child: CircleAvatar(
    //     // CircleAvatar(
    //     radius: 80,
    //     backgroundImage: NetworkImage("assets/images/star.png"),
    //     // ),
    //     // imagePath,

    //     // width: size.width,
    //     // height: size.width,
    //     // fit: BoxFit.fitWidth,
    //   ),
    // );
    return CircleAvatar(
      backgroundImage: AssetImage("assets/images/spock.jpg"),
      radius: 60,
      backgroundColor: Colors.black,
    );
  }
}
