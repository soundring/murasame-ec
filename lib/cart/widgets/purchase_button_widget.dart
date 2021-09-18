import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:murasame_ec/cart/model/model.dart';

class PurchaseButtonWidget extends HookWidget {
  const PurchaseButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isExistCartItem =
        useProvider(cartProvider.select((s) => s.summary.quantity == 0));

    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).primaryColorLight,
          fixedSize: Size(MediaQuery.of(context).size.width * 0.8,
              MediaQuery.of(context).size.height * 0.07),
        ),
        onPressed: isExistCartItem ? null : () {},
        child: const Text(
          '購入する',
        ),
      ),
    );
  }
}
