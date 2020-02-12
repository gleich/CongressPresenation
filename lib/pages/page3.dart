import 'package:flutter/material.dart';

import './widgets/pageOutline.dart';
import './page4.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageOutline(
      nextPage: Page4(),
      lines: [
        "📝 The Senate decides the rules for debate",
        "📭 Open rule allows amendments",
        "📪 Closed rule restricts amendments",
        "📉 Open rule makes it harder for the bill to pass because",
        "\topponents can add clauses to the bill that the proponents have to vote for",
        "✅ If a bill wins in the majority in the Senate as yea it moves to the house",
      ],
      stepName: "3. Senate",
      middleBoxWidth: 75.0,
      linesFontSize: 30.0,
    );
  }
}
