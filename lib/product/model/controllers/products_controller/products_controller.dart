import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:murasame_ec/product/model/model.dart';
import 'package:state_notifier/state_notifier.dart';

import 'products_state.dart';

final productsProvider =
    StateNotifierProvider<ProductsController, ProductsState>(
  (ref) => ProductsController(ref.read),
);

class ProductsController extends StateNotifier<ProductsState> {
  ProductsController(this._read) : super(ProductsState()) {
    () async {
      state = state.copyWith(
        productStocks: await _read(productsFetcher.future),
      );
    }();
  }

  final Reader _read;
}
