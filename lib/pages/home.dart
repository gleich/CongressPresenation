import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './widgets/animate.dart';
import './page1.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeIn(
              start: 130.0,
              stop: 0,
              delay: 3,
              child: Text(
                "Transition of a Bill to a Law",
                style: GoogleFonts.playfairDisplay(
                  textStyle: TextStyle(
                    fontSize: 100,
                  ),
                ),
              ),
              duration: Duration(milliseconds: 700),
            ),
            FadeIn(
                start: -130.0,
                stop: 0,
                delay: 3,
                child: Text(
                  "By Matthew Gleich",
                  style: GoogleFonts.playfairDisplay(
                    textStyle: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
                duration: Duration(milliseconds: 700)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.arrow_forward,
        ),
        hoverColor: Colors.black,
        elevation: 1.0,
        hoverElevation: 10.0,
        backgroundColor: Colors.grey,
        splashColor: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Page1(),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
        color: Colors.black,
        elevation: 10.0,
      ),
    );
  }
}
