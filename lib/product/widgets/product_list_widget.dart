import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:murasame_ec/product/model/model.dart';
import 'package:murasame_ec/product/widgets/widget.dart';

class ProductListWidget extends HookWidget {
  const ProductListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = useProvider(
        productsProvider.select((products) => products.productStocks.toList()));

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 6,
          ),
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductListTileWidget(
              product: products[index],
            );
          },
        ),
      ),
    );
  }
}
