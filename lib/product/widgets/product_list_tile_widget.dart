import 'package:flutter/material.dart';
import 'package:murasame_ec/product/model/entities/entities.dart';

class ProductListTileWidget extends StatelessWidget {
  const ProductListTileWidget({required this.product, Key? key})
      : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ClipRect(
        child: Align(
            alignment: Alignment.center,
            widthFactor: 0.95,
            heightFactor: 0.6,
            child: Image.asset(product.image_path)),
      ),
      Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                product.name,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.black.withOpacity(0.8)),
              ),
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star_border,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.messenger,
                  color: Color(0xffAEAB92),
                ),
                SizedBox(width: 3),
                Text(
                  '${product.review_count}件',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '${product.price}円（税込）',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
