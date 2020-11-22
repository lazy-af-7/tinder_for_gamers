import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class profilebig extends StatelessWidget {
  final Image img;
  const profilebig({Key key, @required this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () => {_launchURL()},
      child: Card(
        color: Colors.black,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              img,
            ],
          ),
        ),
      ),
    );
  }
}

_launchURL() async {
  const url =
      'https://rocketleague.tracker.network/rocket-league/profile/steam/76561198219396175/overview';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
