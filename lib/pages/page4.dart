import 'package:flutter/material.dart';

import './widgets/pageOutline.dart';
import './page5.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageOutline(
      nextPage: Page5(),
      lines: [
        "1️⃣ The bill first gets reported to the house by the Rules Committee",
        "✍️ Usally the other house makes chnages and then the following will happen:",
        "\t1️⃣ Conference committee attempts to create foreground between the houses",
        "\t2️⃣ Sends the bill back to both houses for new vote",
        "⚖️ If a bill receives the majority of votes in the house and Senate as Yea it passes",
        "💀 If a bill receives the majority of votes in the house or Senate",
        "\t (whichever is first) as Ney its killed",
      ],
      stepName: "4. Other House\n(House of Reps)",
      middleBoxWidth: 75.0,
      linesFontSize: 30.0,
    );
  }
}
