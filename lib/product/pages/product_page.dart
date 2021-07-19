import 'package:flutter/material.dart';
import 'package:murasame_ec/product/widgets/widget.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ムラサメ家具'),
          backgroundColor: const Color(0xffdeddd3),
          bottom: const TabBar(
            indicatorColor: Colors.brown,
            tabs: <Tab>[
              Tab(text: '全商品'),
              Tab(text: '新商品'),
              Tab(text: 'ランキング'),
              Tab(text: 'おすすめ'),
            ],
          ),
        ),
        backgroundColor: const Color(0xffdeddd3),
        body: const ProductListWidget(),
      ),
    );
  }
}
