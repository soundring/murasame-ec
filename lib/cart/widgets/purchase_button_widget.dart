import 'package:flutter/material.dart';

class PurchaseButtonWidget extends HookWidget {
  const PurchaseButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).primaryColorLight,
          fixedSize: Size(MediaQuery.of(context).size.width * 0.8,
              MediaQuery.of(context).size.height * 0.07),
        ),
        onPressed: () {},
        child: Text(
          '購入する',
        ),
      ),
    );
  }
}
