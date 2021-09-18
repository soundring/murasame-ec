import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:murasame_ec/product/model/entities/entities.dart';

part 'cart_item.freezed.dart';

@freezed
class CartItem with _$CartItem {
  factory CartItem({
    required Product product,
    required int quantity,
  }) = _CartItem;

  CartItem._();

  CartItem increment() => copyWith(quantity: quantity + 1);
}
