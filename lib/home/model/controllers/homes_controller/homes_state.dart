import 'package:freezed_annotation/freezed_annotation.dart';

part 'homes_state.freezed.dart';

@freezed
class HomesState with _$HomesState {
  factory HomesState({
    @Default(0) int pageIndex,
  }) = _HomesState;
}
