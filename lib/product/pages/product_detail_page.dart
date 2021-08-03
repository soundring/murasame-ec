import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:murasame_ec/favorite/widgets/widgets.dart';
import 'package:murasame_ec/product/model/entities/entities.dart';
import 'package:murasame_ec/product/widgets/widget.dart';

class ProductDetailPage extends HookWidget {
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
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Align(
                  child: Text(
                    product.name,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  alignment: Alignment.centerLeft,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: <Widget>[
                        RatingBarWidget(
                          product: product,
                          itemSize: 26,
                        ),
                        const SizedBox(width: 10),
                        _review(),
                      ],
                    ),
                    FavoriteButtonWidget(productId: product.id),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 12),
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
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 14),
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
}
