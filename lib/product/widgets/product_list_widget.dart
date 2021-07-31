import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:murasame_ec/product/model/model.dart';
import 'package:murasame_ec/product/widgets/widget.dart';

class ProductListWidget extends HookWidget {
  const ProductListWidget({required this.products, Key? key}) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
        ),
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductListTileWidget(
            product: products[index],
          );
        },
      ),
    );
  }
}
