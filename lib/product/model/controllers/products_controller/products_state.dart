import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:murasame_ec/product/model/model.dart';

part 'products_state.freezed.dart';

@freezed
class ProductsState with _$ProductsState {
  factory ProductsState({
    @Default(<Product>[]) List<Product> productStocks,
  }) = _ProductsState;
}
