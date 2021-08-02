import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:murasame_ec/favorite/model/controllers/controllers.dart';
import 'package:murasame_ec/product/model/controllers/controllers.dart';
import 'package:murasame_ec/product/model/entities/entities.dart';

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
                  Text(favoriteProduct.name),
                ],
              ),
              const Divider(),
            ],
          );
        });
  }
}
