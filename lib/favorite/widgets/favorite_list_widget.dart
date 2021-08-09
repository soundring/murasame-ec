import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:murasame_ec/favorite/model/controllers/controllers.dart';
import 'package:murasame_ec/favorite/widgets/widgets.dart';
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

    return favoriteProducts.isEmpty
        ? const Text('お気に入りに登録された商品はまだありません')
        : ListView.builder(
            shrinkWrap: true,
            itemCount: favoriteProducts.length,
            itemBuilder: (BuildContext context, int index) {
              final favoriteProduct = favoriteProducts[index];
              return FavoriteListTileWidget(favoriteProduct: favoriteProduct);
            });
  }
}
