import 'package:flutter/material.dart';
import 'package:murasame_ec/search/widgets/widgets.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          SearchBoxWidget(),
          SearchListWidget(),
        ],
      ),
    );
  }
}
