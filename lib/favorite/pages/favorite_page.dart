import 'package:flutter/material.dart';
import 'package:murasame_ec/favorite/widgets/widgets.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'お気に入り',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ),
        const FavoriteListWidget(),
      ],
    );
  }
}
