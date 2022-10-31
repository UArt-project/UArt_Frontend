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
  static const int _itemsPerPage = 10;

  int _currentPage = 0;

  refresh(newItems) {
    setState(() {
      widget._marketItems = newItems;
    });
  }

  @override
  Widget build(BuildContext context) {
    GetMarketItems(_currentPage).then((value) {
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
        child: SingleChildScrollView(
          child: BootstrapContainer(
            fluid: true,
            decoration: const BoxDecoration(color: Colors.blue),
            children: <Widget>[
              for (var item in widget._marketItems) item,
            ],
          ),
        ),
      ),
      Row(
        children: <Widget>[
          TextButton(
            onPressed: () {
              setState(() {
                _currentPage = 0;
                widget._marketItems = <MarketItem>[];
              });
            },
            child: const Text('1'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _currentPage = 1;
                widget._marketItems = <MarketItem>[];
              });
            },
            child: const Text('2'),
          ),
        ],
      ),
    );
  }
}
