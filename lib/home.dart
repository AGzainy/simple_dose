import 'package:flutter/material.dart';

import 'hexcolor.dart';

class LOVE extends StatefulWidget {
  const LOVE({Key? key}) : super(key: key);

  @override
  _LOVEState createState() => _LOVEState();
}

class _LOVEState extends State<LOVE> {
  //#0d0142 purple
  //#260142
  //#400161
  //#215c25 green
  //#005c25 green
  //#0d5c42
  //#215c43
  Color _oran = HexColor("#e73c00");
  var _index = 0;

  List quotes = [
    "I will always love you.",
    "I will always be there for you.",
    "I will carry you over fire and water for your love.",
    "here is your sanctuary, you are safe with me.",
    "we will always find our way through the dark.",
    "Im in love with how your soul is a mix of chaos and art and how you never try to keep them apart.",
    "Im  not afraid of saying I love you, because when I'm not with you I'm weaker. and that you make me strong.",
    "what a feeling to be a queen beside you somehow I wish  that I could be there now.",
    "You keep me float, you are my soul, you make me grow. That is why you see this glow..",
    "This love is real, this love is chill. I was made for this."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
        title: Text(
          "OXYTOCIN",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: _oran,

      ),
      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Expanded( //if i wanted the container to expand to the entire page
            //child:
            Container(
                padding: EdgeInsets.all(19.5),
                width: 350,
                height: 200,
                margin: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  color: _oran,
                  borderRadius: BorderRadius.circular(14.5),
                ),
                child: Center(
                    child: Text(
                      quotes[_index % quotes.length],
                      style: TextStyle(
                          fontSize: 18.8,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ))),

            //ElevatedButton(onPressed: _showQuote, child: Text("LOVE ME"))
            Divider(thickness: 1.3),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: TextButton.icon(
                  style: TextButton.styleFrom(
                      backgroundColor: _oran),
                  onPressed: _showQuote,
                  icon: Icon(Icons.star_rounded, color: Colors.black),
                  label: Text(
                    "DOSE ME",
                    style: TextStyle(color: Colors.black, fontSize: 18.8),
                  )),
            )
            // TextButton(onPressed: _showQuote(),
            //     child: Row( mainAxisAlignment: MainAxisAlignment.center,
            //         children:[ Icon(Icons.star_outlined),Text('LOVE ME')]))
          ],
        ),
        //i could use a Spacer to move things up, or at the top to move things down
      ),
    );
  }

  _showQuote() {
    //i have to wrap it in  a set state() for to actually  work
    setState(() {
      _index += 1;
    });
  }
}
