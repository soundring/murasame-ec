import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:murasame_ec/product/model/model.dart';

part 'searches_state.freezed.dart';

@freezed
class SearchesState with _$SearchesState {
  factory SearchesState({
    @Default(<Product>[]) List<Product> searchProductStocks,
  }) = _SearchesState;
}
