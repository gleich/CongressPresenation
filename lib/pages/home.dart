import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("🏛 Congress Project 🏛"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(MdiIcons.githubCircle),
            onPressed: () async {
              const url = "https://github.com/Matt-Gleich";
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw "Could not launch $url";
              }
            },
            color: Colors.white,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "The Process of a Bill",
              style: GoogleFonts.sourceSansPro(
                textStyle: TextStyle(
                  fontSize: 100,
                ),
              ),
            ),
            Text(
              "By Matthew Gleich",
              style: TextStyle(fontSize: 40),
            ),
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
        onPressed: () {},
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
