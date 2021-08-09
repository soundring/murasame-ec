import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_state.freezed.dart';

@freezed
class UsersState with _$UsersState {
  factory UsersState() = _UsersState;
}
