import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'homes_state.dart';

final homesProvider = StateNotifierProvider<HomesController, HomesState>(
  (ref) => HomesController(),
);

class HomesController extends StateNotifier<HomesState> {
  HomesController() : super(HomesState());

  void setPageIndex({int pageIndex = 0}) {
    state = state.copyWith(
      pageIndex: pageIndex,
    );
  }
}
