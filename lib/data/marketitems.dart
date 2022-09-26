import 'dart:convert';

import 'package:http/http.dart' as http;

class MarketItemData {
  final String photo;
  final String name;
  final String price;

  MarketItemData(this.photo, this.name, this.price);
}

const uri = "http://localhost:8000/v1/market/0";

Future<List<MarketItemData>> GetMarketItems() async {
  // make http request to get market items
  List<MarketItemData> items = <MarketItemData>[];
  Map<String, dynamic> data;
  final request = await http.get(
    Uri.parse(uri),
  );

  if (request.statusCode != 200) {
    throw Exception("Failed to get market items, code: ${request.statusCode}");
  }

  data = jsonDecode(utf8.decode(request.bodyBytes));

  for (var i = 0; i < data["items"].length; i++) {
    var photo = data["items"][i]["photo"] ?? "";
    var name = data["items"][i]["name"] ?? "";
    var price = data["items"][i]["price"] ?? 0;

    items.add(MarketItemData(photo, name, price.toString()));
  }

  return items;
}
