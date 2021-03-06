import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:murasame_ec/favorite/model/controllers/controllers.dart';

class FavoriteButtonWidget extends HookWidget {
  const FavoriteButtonWidget({required this.productId, Key? key})
      : super(key: key);

  final int productId;

  @override
  Widget build(BuildContext context) {
    final favoriteProductIds = useProvider(
        favoritesProvider.select((value) => value.favoriteProductIds));

    Widget iconWidget;

    if (favoriteProductIds.contains(productId)) {
      iconWidget = const Icon(
        Icons.favorite,
        size: 32,
        color: Color(0xffea553a),
      );
    } else {
      iconWidget = const Icon(
        Icons.favorite_border,
        size: 32,
        color: Color(0xffea553a),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: OutlinedButton(
        onPressed: () {
          context
              .read<FavoritesController>(favoritesProvider.notifier)
              .toggleFavoriteProduct(productId: productId);
        },
        child: iconWidget,
      ),
    );
  }
}
