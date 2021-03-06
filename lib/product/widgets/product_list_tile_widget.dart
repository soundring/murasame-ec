import 'package:flutter/material.dart';
import 'package:murasame_ec/product/model/entities/entities.dart';
import 'package:murasame_ec/product/pages/product_detail_page.dart';
import 'package:murasame_ec/product/widgets/widget.dart';

class ProductListTileWidget extends StatelessWidget {
  const ProductListTileWidget({required this.product, Key? key})
      : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute<void>(builder: (context) {
          return ProductDetailPage(
            product: product,
          );
        }));
      },
      child: Column(children: <Widget>[
        Expanded(
          flex: 5,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(product.image_path),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              product.name,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              RatingBarWidget(
                product: product,
                itemSize: 20,
              ),
              const SizedBox(width: 10),
              ReviewCountWidget(reviewCount: product.review_count),
            ],
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              '${product.price}円（税込）',
              style: Theme.of(context).textTheme.caption,
            ),
          ),
        ),
      ]),
    );
  }
}
