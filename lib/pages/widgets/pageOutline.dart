import 'package:flutter/material.dart';

class PageOutline extends StatelessWidget {
  final Widget body;

  PageOutline({@required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("🏛 Congress Project 🏛"),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            title: Text(
              "Back a Slide",
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            title: Text(
              "Next Slide",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
        backgroundColor: Colors.black,
      ),
    );
  }
}
