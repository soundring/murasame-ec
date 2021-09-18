import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:murasame_ec/cart/model/model.dart';
import 'package:murasame_ec/product/pages/product_detail_page.dart';

class CartItemListTileWidget extends StatelessWidget {
  const CartItemListTileWidget({required this.cartItem, Key? key})
      : super(key: key);

  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute<void>(builder: (context) {
          return ProductDetailPage(
            product: cartItem.product,
          );
        }));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 100,
                child: Image.asset(cartItem.product.image_path),
              ),
              Expanded(
                child: Container(
                  height: 130,
                  padding: const EdgeInsets.only(top: 5, left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        cartItem.product.name,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${cartItem.product.price}円(税込)',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          DropdownButton<int>(
                              value: cartItem.quantity,
                              items: <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
                                  .map((int value) {
                                return DropdownMenuItem<int>(
                                  value: value,
                                  child: Text(value.toString()),
                                );
                              }).toList(),
                              onChanged: (int? value) {
                                context
                                    .read<CartController>(cartProvider.notifier)
                                    .changeCartItemQuantity(
                                        productId: cartItem.product.id,
                                        num: value!);
                              }),
                          const SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              onPressed: () {
                                context
                                    .read<CartController>(cartProvider.notifier)
                                    .delete(productId: cartItem.product.id);
                              },
                              child: Text(
                                '削除',
                                style: TextStyle(
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .fontSize,
                                    color: Theme.of(context).primaryColorLight),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
