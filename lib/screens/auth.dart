import 'package:flutter/material.dart';
import 'package:uart_frontend/widgets/page.dart';

import '../data/authhandler.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  AuthPageState createState() => AuthPageState();
}

class AuthPageState extends State<AuthPage> {
  bool isBusy = false;
  bool isLoggedIn = false;
  // String errorMessage;
  // String name;
  // String picture;

  @override
  Widget build(BuildContext context) {
    SendAuthRequest();

    return UArtPage(
      "Auth page",
      Center(
        child: Text('Implement User Authentication'),
      ),
    );
  }
}
