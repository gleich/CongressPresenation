import 'package:flutter/material.dart';

import './widgets/pageOutline.dart';
import './page7.dart';

class Page6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageOutline(
      nextPage: Page7(),
      lines: [
        "🚀 The houses can overright the President's veto with a 2/3rds majority",
        "\t when voted on again"
      ],
      stepName: "6. Overwriting \nPresident's Veto",
      middleBoxWidth: 75.0,
      linesFontSize: 30.0,
    );
  }
}
