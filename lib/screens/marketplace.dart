import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:uart_frontend/data/marketitems.dart';
import 'package:uart_frontend/widgets/marketitem.dart';
import 'package:uart_frontend/widgets/page.dart';

class MarketplacePage extends StatefulWidget {
  List<MarketItem> _marketItems = <MarketItem>[];

  MarketplacePage({super.key});

  @override
  State<MarketplacePage> createState() => _MarketplacePageState();
}

class _MarketplacePageState extends State<MarketplacePage> {
  refresh(newItems) {
    setState(() {
      widget._marketItems = newItems;
    });
  }

  @override
  Widget build(BuildContext context) {
    GetMarketItems().then((value) {
      List<MarketItemData> itemData = value;
      var items = <MarketItem>[];

      for (var item in itemData) {
        items.add(MarketItem(item.photo, item.name, item.price));
      }

      refresh(items);
    });

    return UArtPage(
      "UArt Marketplace",
      Center(
        child: BootstrapContainer(
          children: [
            GridView.count(
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              crossAxisCount: 4,
              children: <Widget>[
                for (var item in widget._marketItems) item,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
