import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'users_state.dart';

final usersProvider = StateNotifierProvider<UsersController, UsersState>(
  (ref) => UsersController(),
);

class UsersController extends StateNotifier<UsersState> {
  UsersController() : super(UsersState());
}
