import 'package:flutter/material.dart';

import './home.dart';

class Page7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "🏛 Congress Project - Matthew Gleich - Done :) 🏛",
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
          child: Text(
            "Home Page",
            style: TextStyle(fontSize: 100),
          ),
          color: Colors.black,
          textColor: Colors.white,
        ),
      ),
    );
  }
}
