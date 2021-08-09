import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:murasame_ec/favorite/pages/pages.dart';
import 'package:murasame_ec/home/model/model.dart';
import 'package:murasame_ec/product/pages/pages.dart';
import 'package:murasame_ec/user/pages/pages.dart';

class HomePage extends HookWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Widget> _pageList = <Widget>[
    const ProductPage(),
    const SearchPage(),
    const FavoritePage(),
    const CartPage(),
    const MyPage()
  ];

  final _bottomNavigationBarItem = const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'ホーム',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: '探す',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: 'お気に入り',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      label: 'カート',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle),
      label: 'マイページ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final _selectedIndex =
        useProvider(homesProvider.select((s) => s.pageIndex));

    return Scaffold(
      appBar: AppBar(
        title: const Text('ムラサメ家具'),
      ),
      body: _pageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: _bottomNavigationBarItem,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            context.read(homesProvider.notifier).setPageIndex(pageIndex: index);
          }),
    );
  }
}
