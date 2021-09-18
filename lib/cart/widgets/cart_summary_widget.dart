import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:murasame_ec/cart/model/model.dart';

class CartSummaryWidget extends HookWidget {
  const CartSummaryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final totalQuantity =
        useProvider(cartProvider.select((s) => s.summary.totalQuantityState));
    final totalPrice =
        useProvider(cartProvider.select((s) => s.summary.totalPriceState));

    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            totalQuantity,
            style: Theme.of(context).textTheme.caption,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            totalPrice,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
    );
  }
}
