import 'package:flutter/material.dart';
import 'package:murasame_ec/product/model/entities/entities.dart';
import 'package:murasame_ec/product/pages/pages.dart';
import 'package:murasame_ec/product/widgets/widget.dart';

class FavoriteListTileWidget extends StatelessWidget {
  const FavoriteListTileWidget({required this.favoriteProduct, Key? key})
      : super(key: key);

  final Product favoriteProduct;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute<void>(builder: (context) {
          return ProductDetailPage(
            product: favoriteProduct,
          );
        }));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 150,
                child: Image.asset(favoriteProduct.image_path),
              ),
              Expanded(
                child: Container(
                  height: 150,
                  padding: const EdgeInsets.only(top: 5, left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        favoriteProduct.name,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RatingBarWidget(product: favoriteProduct, itemSize: 24),
                      const SizedBox(
                        height: 5,
                      ),
                      ReviewCountWidget(
                          reviewCount: favoriteProduct.review_count),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${favoriteProduct.price}円(税込)',
                        style: Theme.of(context).textTheme.subtitle2,
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
