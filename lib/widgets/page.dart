import 'package:flutter/material.dart';

Scaffold UArtPage(String barTitle, Widget? body) {
  return Scaffold(
    appBar: AppBar(
      title: Text(barTitle),
    ),
    body: body,
    backgroundColor: Colors.grey,
    bottomNavigationBar: Container(
      color: const Color(0xFFE0E0E0),
      child: const Text(
        "The project is courtesy of two blokes that had an idea. Not that the rights are reserved, but please do not steal the stuff, thx.",
        textAlign: TextAlign.center,
      ),
    ),
  );
}
