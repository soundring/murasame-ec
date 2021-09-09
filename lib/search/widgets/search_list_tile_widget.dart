import 'package:flutter/material.dart';
import 'package:murasame_ec/product/model/entities/entities.dart';
import 'package:murasame_ec/product/pages/pages.dart';
import 'package:murasame_ec/product/widgets/widget.dart';

class SearchListTileWidget extends StatelessWidget {
  const SearchListTileWidget({required this.product, Key? key})
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 100,
                child: Image.asset(product.image_path),
              ),
              Expanded(
                child: Container(
                  height: 110,
                  padding: const EdgeInsets.only(top: 5, left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      RatingBarWidget(product: product, itemSize: 20),
                      const SizedBox(
                        height: 5,
                      ),
                      ReviewCountWidget(reviewCount: product.review_count),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${product.price}円(税込)',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
