import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:murasame_ec/product/model/entities/entities.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({required this.product, Key? key}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Column(
        children: [
          ClipRect(
            child: Align(
                alignment: Alignment.center,
                widthFactor: 1,
                heightFactor: 0.85,
                child: Image.asset(product.image_path)),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      product.name,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    Row(
                      children: <Widget>[
                        _ratingBar(),
                        const SizedBox(width: 10),
                        _review(),
                      ],
                    ),
                  ],
                ),
                _favoriteButton(),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '${product.price}円（税込）',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.shopping_cart),
                    Text('カートに入れる'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _ratingBar() {
    return RatingBar.builder(
      initialRating: product.star,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 26,
      ignoreGestures: true,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Color(0xffd3c112),
      ),
      onRatingUpdate: (rating) {},
    );
  }

  Widget _review() {
    return Row(
      children: [
        const Icon(
          Icons.messenger,
          color: Color(0xffAEAB92),
        ),
        Text(
          '${product.review_count}件',
        )
      ],
    );
  }

  Widget _favoriteButton() {
    return OutlinedButton(
      onPressed: () {},
      child: const Icon(
        Icons.favorite_border,
        size: 30,
        color: Color(0xffea553a),
      ),
    );
  }
}
