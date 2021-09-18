import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:murasame_ec/cart/model/controllers/cart_controller.dart';
import 'package:murasame_ec/cart/widgets/cart_item_list_tile_widget.dart';

class CartItemsListWidget extends HookWidget {
  const CartItemsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartItems = useProvider(cartProvider.select((s) => s.cartItems));

    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.6,
        child: cartItems.isEmpty
            ? const Center(
                child: Text('カートに何もありません'),
              )
            : ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return CartItemListTileWidget(cartItem: cartItems[index]);
                }));
  }
}
