import 'package:flutter/material.dart';
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
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          controller: _tabController,
          indicatorColor: Colors.brown,
          tabs: const <Tab>[
            Tab(text: '全商品'),
            Tab(text: '新商品'),
            Tab(text: 'ランキング'),
            Tab(text: 'おすすめ'),
          ],
        ),
        const ProductListWidget(),
      ],
    );
  }
}
