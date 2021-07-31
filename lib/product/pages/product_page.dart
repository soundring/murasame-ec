import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:murasame_ec/product/model/model.dart';
import 'package:murasame_ec/product/widgets/widget.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          controller: _tabController,
          tabs: const <Tab>[
            Tab(text: '全商品'),
            Tab(text: '人気商品'),
            Tab(text: '新着商品'),
          ],
        ),
        _TabBarView(tabController: _tabController)
        // const ProductListWidget(),
      ],
    );
  }
}

class _TabBarView extends HookWidget {
  const _TabBarView({required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    final products = useProvider(
        productsProvider.select((products) => products.productStocks));

    return Expanded(
      child: TabBarView(controller: tabController, children: [
        ProductListWidget(
          products: products,
        ),
        ProductListWidget(
          products: products.where((products) => products.star > 4.5).toList(),
        ),
        ProductListWidget(
          products: products.reversed.take(3).toList(),
        ),
      ]),
    );
  }
}
