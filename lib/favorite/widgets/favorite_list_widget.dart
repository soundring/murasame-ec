import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:murasame_ec/favorite/model/controllers/controllers.dart';
import 'package:murasame_ec/product/model/controllers/controllers.dart';
import 'package:murasame_ec/product/model/entities/entities.dart';
import 'package:murasame_ec/product/widgets/rating_bar_widget.dart';

class FavoriteListWidget extends HookWidget {
  const FavoriteListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favoriteProductIds = useProvider(
        favoritesProvider.select((favorite) => favorite.favoriteProductIds));

    final products = useProvider(productsProvider
        .select((product) => product.productStocks.map((e) => e).toList()));

    final List<Product> favoriteProducts = [];

    for (final product in products) {
      if (favoriteProductIds.contains(product.id)) {
        favoriteProducts.add(product);
      }
    }

    return ListView.builder(
        shrinkWrap: true,
        itemCount: favoriteProducts.length,
        itemBuilder: (BuildContext context, int index) {
          final favoriteProduct = favoriteProducts[index];
          return Column(
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
                          RatingBarWidget(
                              product: favoriteProduct, itemSize: 24),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.messenger,
                                color: Color(0xffAEAB92),
                                size: 26,
                              ),
                              Text(
                                '${favoriteProduct.review_count}件',
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ],
                          ),
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
          );
        });
  }
}
