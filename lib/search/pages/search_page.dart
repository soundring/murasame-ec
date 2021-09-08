import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "検索",
              hintText: "検索ワードを入力",
            ),
          ),
        )
      ],
    );
  }
}
