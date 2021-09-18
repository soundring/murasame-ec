import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:murasame_ec/cart/model/model.dart';
import 'package:murasame_ec/product/model/api.dart';
import 'package:murasame_ec/product/model/entities/entities.dart';
import 'package:state_notifier/state_notifier.dart';

import 'cart_state.dart';

final cartProvider = StateNotifierProvider<CartController, CartState>(
  (ref) => CartController(ref.read),
);

class CartController extends StateNotifier<CartState> {
  CartController(this._read) : super(CartState()) {
    () async {
      products = await _read(productsFetcher.future);
    }();
  }

  late List<Product> products;
  final Reader _read;

  void changeCartItemQuantity({required int productId, required int num}) {
    final cartItems = [...state.cartItems];
    final cartItem =
        cartItems.firstWhere((cartItem) => cartItem.product.id == productId);

    cartItems.remove(cartItem);
    cartItems.add(CartItem(product: cartItem.product, quantity: num));
    state = state.copyWith(cartItems: [...cartItems]);
  }

  void add({required int productId}) {
    final cartItems = [...state.cartItems];
    final product = products.firstWhere((product) => product.id == productId);

    cartItems.add(CartItem(product: product, quantity: 0).increment());
    state = state.copyWith(cartItems: [...cartItems]);
  }

  void delete({required int productId}) {
    final cartItems = [...state.cartItems];
    final cartItem =
        cartItems.firstWhere((cartItem) => cartItem.product.id == productId);

    cartItems.remove(cartItem);
    state = state.copyWith(cartItems: [...cartItems]);
  }
}
