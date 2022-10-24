import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MarketItem extends StatelessWidget {
  final String? photo;
  final String? name;
  final String? price;

  const MarketItem(this.photo, this.name, this.price, {super.key});

  @override
  Widget build(BuildContext context) {
    CachedNetworkImage image;
    image = CachedNetworkImage(
      imageUrl: photo!,
      width: 250,
      height: 250,
      fit: BoxFit.cover,
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) =>
          Image.asset('assets/images/imgnotfound.png'),
    );

    return Stack(
      children: <Widget>[
        image,
        Positioned(
          bottom: 0,
          left: 0,
          child: ColoredBox(
            color: Colors.black.withOpacity(0.5),
            child: Padding(
              padding: EdgeInsets.fromLTRB(5 * 0.01, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "\"${name!}\"",
                    style: const TextStyle(color: Colors.white),
                    softWrap: true,
                  ),
                  Text(
                    "Вартість: ${price!}",
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
