import 'package:flutter/material.dart';

import './widgets/pageOutline.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageOutline(
      body: Text("Page Two"),
    );
  }
}
