import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:murasame_ec/search/model/model.dart';
import 'package:murasame_ec/search/widgets/search_list_tile_widget.dart';

class SearchListWidget extends HookWidget {
  const SearchListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchesProducts =
        useProvider(searchesProvider.select((s) => s.searchProductStocks));

    return searchesProducts.isEmpty
        ? const Text('検索結果がありません')
        : SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: searchesProducts.length,
                itemBuilder: (BuildContext context, int index) {
                  final searchesProduct = searchesProducts[index];
                  return SearchListTileWidget(product: searchesProduct);
                }),
          );
  }
}
