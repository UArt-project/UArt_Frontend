import 'package:flutter/material.dart';
import 'package:uart_frontend/widgets/marketitem.dart';
import 'package:uart_frontend/widgets/page.dart';

class MarketplacePage extends StatefulWidget {
  const MarketplacePage({super.key});

  @override
  State<MarketplacePage> createState() => _MarketplacePageState();
}

class _MarketplacePageState extends State<MarketplacePage> {
  @override
  Widget build(BuildContext context) {
    return UArtPage(
      "UArt Marketplace",
      Center(
        child: GridView.count(
          crossAxisCount: 4,
          children: <Widget>[
            const MarketItem("assets/images/1.jpg", "Клоун", "₴2.00"),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.orange,
            ),
            Container(
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
