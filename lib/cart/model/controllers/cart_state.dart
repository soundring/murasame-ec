import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:murasame_ec/cart/model/model.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  factory CartState({
    @Default(<CartItem>[]) List<CartItem> cartItems,
  }) = _CartState;

  CartState._();

  late final summary = CartSummary(
    quantity: cartItems.fold<int>(
      0,
      (sum, e) => sum + e.quantity,
    ),
    totalPrice: cartItems.fold<int>(
      0,
      (sum, e) => sum + e.product.price * e.quantity,
    ),
  );
}

@freezed
class CartSummary with _$CartSummary {
  factory CartSummary({
    @Default(0) int quantity,
    @Default(0) int totalPrice,
  }) = _CartSummary;

  CartSummary._();

  late final totalQuantityState = 'カートのアイテム $quantity個';
  late final totalPriceState = '小計 ¥$totalPrice';
}
