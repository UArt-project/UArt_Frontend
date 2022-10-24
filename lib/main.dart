import 'package:flutter/material.dart';
import 'package:uart_frontend/screens/auth.dart';
import 'package:uart_frontend/screens/home.dart';
import 'package:uart_frontend/screens/map.dart';
import 'package:uart_frontend/screens/marketplace.dart';

void main() {
  runApp(const UArt());
}

class UArt extends StatelessWidget {
  const UArt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/map': (context) => const MapPage(),
        '/marketplace': (context) => MarketplacePage(),
        '/auth': (context) => const AuthPage(),
      },
      initialRoute: '/',
    );
  }
}
