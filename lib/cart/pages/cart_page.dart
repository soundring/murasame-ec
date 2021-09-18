import 'package:flutter/material.dart';
import 'package:murasame_ec/cart/widgets/widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CartItemsListWidget(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        const CartSummaryWidget(),
        const PurchaseButtonWidget(),
      ],
    );
  }
}
