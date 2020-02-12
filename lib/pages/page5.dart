import 'package:flutter/material.dart';

import './widgets/pageOutline.dart';
import './page6.dart';

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageOutline(
      nextPage: Page6(),
      lines: [
        "✅ If the President approves the bill, it becomes a law",
        "❌ If the President vetos the bill, then it doesn't become a law",
        "⏰ If the President doesn't approve or veto the bill after 10 days the",
        "\tbill also doesn't become a law. This only works if the president can't",
        "\tsign the law due to the end of a term or holiday"
      ],
      stepName: "5. President",
      middleBoxWidth: 75.0,
      linesFontSize: 30.0,
    );
  }
}
