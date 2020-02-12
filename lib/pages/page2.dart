import 'package:flutter/material.dart';

import './widgets/pageOutline.dart';
import './page3.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageOutline(
      nextPage: Page3(),
      lines: [
        "✨ The committee for the corresponding house is specialized",
        "\t🔫 An example would be the Senate Armed Services Committee",
        "👍 👎 The committee then debates the bill",
        "🏁 If the bill wins a majority vote in the committee as yea it moves to the Senate or House",
        "\t (In this example process the Senate)"
      ],
      stepName: "2. Committee",
      middleBoxWidth: 75.0,
      linesFontSize: 30.0,
    );
  }
}
