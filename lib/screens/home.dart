import 'package:flutter/material.dart';
import 'package:uart_frontend/widgets/page.dart';
import 'package:uart_frontend/widgets/subtitledtextbox.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var buttonWidth = MediaQuery.of(context).size.width / 2;
    var buttonHeight = MediaQuery.of(context).size.height;
    var buttonSize = Size(buttonWidth, buttonHeight);
    var mainTextSize = buttonWidth * 0.14;
    var subTextSize = buttonWidth * 0.05;
    return UArtPage(
      "UArt",
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: buttonSize,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/marketplace');
              },
              child: SubtitledTextBox(
                'Маркетплейс',
                mainTextSize,
                '(Для усього, що варто прибдати)',
                subTextSize,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(buttonWidth, buttonHeight),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/map');
            },
            child: SubtitledTextBox(
              'Мапа',
              mainTextSize,
              '(Для усього, що варто побачити)',
              subTextSize,
            ),
          ),
        ],
      ),
    );
  }
}
