import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  Icon cus = Icon(
    Icons.search,
    size: 30.0,
    color: HexColor('#39ff14'),
  );
  Widget search = Text("Chat",
      style: TextStyle(
        color: HexColor('#39ff14'),
        fontFamily: 'Bebas Neue',
        fontSize: 40,
      ));
  List<String> favorites_img = [
    "images/spock.jpg",
    "images/kirk.png",
    "images/uhura.jpg",
    "images/mccoy.jpg",
    "images/sulu.jpeg",
    "images/christine.jpg",
  ];
  List<String> favorites = [
    "Captain Spock",
    "Captain Kirk",
    "Uhura",
    "Doctor McCoy",
    "Sulu",
    "Christine Chapel",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: search,
          ),
          elevation: 20.0,
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.fromLTRB(0.0, 4.0, 18.0, 0.0),
              // icon: Icon(
              //   Icons.search,
              //   size: 30.0,
              //   color: Colors.white,
              // ),
              onPressed: () {
                setState(() {
                  if (this.cus.icon == Icons.search) {
                    this.cus = Icon(
                      Icons.cancel,
                      color: HexColor('#39ff14'),
                    );
                    this.search = TextField(
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                        hintText: "Search A Movie",
                        hintStyle: TextStyle(
                          color: HexColor('#39ff14'),
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    );
                  } else {
                    this.cus = Icon(
                      Icons.search,
                      color: HexColor('#39ff14'),
                    );
                    this.search = Text("POPCORN",
                        style: TextStyle(
                          fontFamily: 'Bebas Neue',
                          fontSize: 40,
                          color: HexColor('#39ff14'),
                        ));
                  }
                });
              },
              icon: cus,
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Favorite Contacts',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 120,
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 10),
                  scrollDirection: Axis.horizontal,
                  itemCount: favorites.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                          child: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(favorites_img[index]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            favorites[index],
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    );
                  }),
            )
          ],
        ));
  }
}
