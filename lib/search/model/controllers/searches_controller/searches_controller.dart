import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:murasame_ec/product/model/model.dart';
import 'package:murasame_ec/search/model/controllers/searches_controller/searches_state.dart';
import 'package:state_notifier/state_notifier.dart';

final searchesProvider =
    StateNotifierProvider<SearchesController, SearchesState>(
  (ref) => SearchesController(ref.read),
);

List<Product> searchResultList = [];

class SearchesController extends StateNotifier<SearchesState> {
  SearchesController(this._read) : super(SearchesState()) {
    () async {
      products = await _read(productsFetcher.future);
    }();
  }

  late List<Product> products;
  final Reader _read;

  void search({required String text}) {
    searchResultList.clear();

    for (final product in products) {
      if (product.name.contains(text)) {
        searchResultList.add(product);
      }
    }

    state = state.copyWith(searchProductStocks: [...searchResultList]);
  }
}
