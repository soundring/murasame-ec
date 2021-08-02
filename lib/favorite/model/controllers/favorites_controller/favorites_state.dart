import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_state.freezed.dart';

@freezed
class FavoritesState with _$FavoritesState {
  factory FavoritesState({
    @Default(<int>[]) List<int> favoriteProductIds,
  }) = _FavoritesState;
}
