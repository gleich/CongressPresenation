import 'package:flutter/material.dart';

import './widgets/pageOutline.dart';
import '../pages/page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageOutline(
      nextPage: Page2(),
      lines: [
        "🥇 The Bill First Gets Introduced",
        "🏛 A member of Congress or Senator can introduce bill",
        "🙋‍♂️ Whoever introduced the bill is made a sponsor of that bill",
        "➡️ The bill can then move onto a committee",
      ],
      stepName: "1. Introduction",
      middleBoxWidth: 75.0,
      linesFontSize: 30.0,
    );
  }
}
