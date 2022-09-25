import 'package:flutter/material.dart';

class SubtitledTextBox extends StatelessWidget {
  final String? text;
  final double? size;
  final String? subtitle;
  final double? subtitleSize;

  const SubtitledTextBox(this.text, this.size, this.subtitle, this.subtitleSize,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          text!,
          style: TextStyle(
            fontSize: size,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
          ),
        ),
        Text(
          subtitle!,
          style: TextStyle(
            fontSize: subtitleSize,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
          ),
        ),
      ],
    );
  }
}
