import 'package:Tinder_For_Gamers/Helpers/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  var _controller = TextEditingController();
  String msg = null;
  bool send = false;
  Icon cus = Icon(
    Icons.search,
    size: 30.0,
    color: HexColor('#39ff14'),
  );
  Widget search = Text("hermione",
      style: TextStyle(
        color: HexColor('#39ff14'),
        fontFamily: 'Bebas Neue',
        fontSize: 40,
      ));
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
                      hintText: "Search A Chat",
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
                  this.search = Text("HERMIONE",
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 30, 8, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 250,
                      child: Card(
                        shape: StadiumBorder(
                            side: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        )),
                        color: Colors.grey,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Yo! Wanna play some RL?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ConditionalBuilder(
                condition: send,
                builder: (context) {
                  return new Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 20, 8, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 250,
                          child: Card(
                            shape: StadiumBorder(
                                side: BorderSide(
                              color: HexColor('#39ff14'),
                              width: 1.0,
                            )),
                            color: HexColor('#39ff14'),
                            child: Container(
                              padding: EdgeInsets.all(8),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                msg,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 4.0, 4.0, 20.0),
                  child: Card(
                    shape: StadiumBorder(
                        side: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    )),
                    margin: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                    color: Colors.transparent,
                    child: SizedBox(
                      width: 300,
                      child: TextField(
                        controller: _controller,
                        style: TextStyle(color: Colors.white),
                        maxLines: 3,
                        minLines: 1,
                        autofocus: false,
                        enableInteractiveSelection: false,
                        enableSuggestions: false,
                        decoration: InputDecoration(
                            hintText: 'Message',
                            hintStyle: TextStyle(color: Colors.white),
                            border: InputBorder.none,
                            focusColor: Colors.white,
                            contentPadding: EdgeInsets.only(left: 25)),
                        onChanged: (String str) {
                          setState(() {
                            msg = str;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(3.0, 4.0, 4.0, 20.0),
                child: IconButton(
                    icon: Icon(
                      Icons.send_rounded,
                      color: HexColor('#39ff14'),
                    ),
                    onPressed: () {
                      setState(() {
                        send = true;
                        print(msg);
                        print(send);
                        _controller.clear();
                      });
                    }),
              )
            ],
          ),
        ],
      ),
    );
  }
}
