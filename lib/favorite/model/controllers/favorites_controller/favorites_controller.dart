import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'favorites_state.dart';

final favoritesProvider =
    StateNotifierProvider<FavoritesController, FavoritesState>(
  (ref) => FavoritesController(),
);

class FavoritesController extends StateNotifier<FavoritesState> {
  FavoritesController() : super(FavoritesState());

  void toggleFavoriteProduct({int productId = 0}) {
    final favoriteProductIds = [...state.favoriteProductIds];
    if (favoriteProductIds.contains(productId)) {
      favoriteProductIds.remove(productId);
    } else {
      favoriteProductIds.add(productId);
    }

    state = state.copyWith(favoriteProductIds: favoriteProductIds);
  }
}
