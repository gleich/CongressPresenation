import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home.dart';
import './animate.dart';

class PageOutline extends StatelessWidget {
  final Widget nextPage;
  final List<String> lines;
  final String stepName;
  final double linesFontSize;
  final double middleBoxWidth;

  PageOutline(
      {@required this.nextPage,
      @required this.lines,
      @required this.stepName,
      @required this.linesFontSize,
      @required this.middleBoxWidth});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("🏛 Congress Project - Matthew Gleich 🏛"),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeIn(
              duration: Duration(seconds: 1),
              stop: 0,
              start: -100,
              delay: 4,
              child: Text(
                stepName,
                style: GoogleFonts.josefinSans(fontSize: 100),
              ),
            ),
            SizedBox(
              width: middleBoxWidth,
            ),
            FadeIn(
              duration: Duration(seconds: 1),
              stop: 0,
              start: 100,
              delay: 6,
              child: Text(
                lines.join("\n"),
                style: GoogleFonts.dosis(fontSize: linesFontSize),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FadeIn(
              duration: Duration(seconds: 1),
              stop: 0,
              start: -100,
              delay: 4,
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            title: FadeIn(
              duration: Duration(seconds: 1),
              stop: 0,
              start: -100,
              delay: 4.5,
              child: Text(
                "Back a Step",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: FadeIn(
              duration: Duration(seconds: 1),
              stop: 0,
              start: 100,
              delay: 4,
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
            title: FadeIn(
              duration: Duration(seconds: 1),
              stop: 0,
              start: 100,
              delay: 4.5,
              child: Text(
                "Next Step",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
        backgroundColor: Colors.black,
        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context);
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => nextPage,
              ),
            );
          }
        },
      ),
    );
  }
}
