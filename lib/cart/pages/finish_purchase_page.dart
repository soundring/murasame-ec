import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:murasame_ec/cart/model/controllers/cart_controller.dart';
import 'package:murasame_ec/home/model/controllers/controllers.dart';
import 'package:murasame_ec/home/pages/home_page.dart';

class FinishPurchasePage extends HookWidget {
  const FinishPurchasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('購入完了'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '購入ありがとうございました',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColorLight,
                fixedSize: Size(MediaQuery.of(context).size.width * 0.8,
                    MediaQuery.of(context).size.height * 0.07),
              ),
              onPressed: () {
                context
                    .read<HomesController>(homesProvider.notifier)
                    .setPageIndex(pageIndex: 0);
                context.read<CartController>(cartProvider.notifier).clear();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute<MaterialPageRoute>(
                        builder: (context) => HomePage()),
                    (_) => false);
              },
              child: const Text('ホームに戻る'),
            )
          ],
        ),
      ),
    );
  }
}
