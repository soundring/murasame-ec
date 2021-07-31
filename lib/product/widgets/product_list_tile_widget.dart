import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
              ),
            ),
            Row(
              children: <Widget>[
                RatingBar.builder(
                  initialRating: product.star,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 20,
                  ignoreGestures: true,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Color(0xffd3c112),
                  ),
                  onRatingUpdate: (rating) {},
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.messenger,
                  color: Color(0xffAEAB92),
                ),
                const SizedBox(width: 3),
                Text(
                  '${product.review_count}件',
                )
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '${product.price}円（税込）',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
