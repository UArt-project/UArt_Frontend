import 'package:flutter/material.dart';

class MarketItem extends StatelessWidget {
  final String? photo;
  final String? name;
  final String? price;

  const MarketItem(this.photo, this.name, this.price, {super.key});

  @override
  Widget build(BuildContext context) {
    var fullWidth = MediaQuery.of(context).size.width / 4;
    Image image;
    image = Image.asset('assets/images/imgnotfound.png');

    return Stack(
      children: <Widget>[
        image,
        Positioned(
          bottom: 0,
          left: 0,
          width: fullWidth,
          child: ColoredBox(
            color: Colors.black.withOpacity(0.5),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(fullWidth * 0.01, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\"${name!}\"",
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Вартість: ${price!}",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, fullWidth * 0.01, 0),
                      child: ElevatedButton(
                        child: const Text("Придбати"),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
