import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:murasame_ec/search/model/model.dart';

class SearchBoxWidget extends StatelessWidget {
  const SearchBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.09,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: TextField(
          onChanged: (text) {
            context
                .read<SearchesController>(searchesProvider.notifier)
                .search(text: text);
          },
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 14, bottom: 8, top: 8),
            prefixIcon: Icon(
              Icons.search,
              color: Theme.of(context).primaryColorLight,
            ),
            border: const OutlineInputBorder(),
            hintText: '検索ワードを入力',
          ),
        ),
      ),
    );
  }
}
