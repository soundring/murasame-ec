// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'homes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomesStateTearOff {
  const _$HomesStateTearOff();

  _HomesState call({int pageIndex = 0}) {
    return _HomesState(
      pageIndex: pageIndex,
    );
  }
}

/// @nodoc
const $HomesState = _$HomesStateTearOff();

/// @nodoc
mixin _$HomesState {
  int get pageIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomesStateCopyWith<HomesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomesStateCopyWith<$Res> {
  factory $HomesStateCopyWith(
          HomesState value, $Res Function(HomesState) then) =
      _$HomesStateCopyWithImpl<$Res>;
  $Res call({int pageIndex});
}

/// @nodoc
class _$HomesStateCopyWithImpl<$Res> implements $HomesStateCopyWith<$Res> {
  _$HomesStateCopyWithImpl(this._value, this._then);

  final HomesState _value;
  // ignore: unused_field
  final $Res Function(HomesState) _then;

  @override
  $Res call({
    Object? pageIndex = freezed,
  }) {
    return _then(_value.copyWith(
      pageIndex: pageIndex == freezed
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$HomesStateCopyWith<$Res> implements $HomesStateCopyWith<$Res> {
  factory _$HomesStateCopyWith(
          _HomesState value, $Res Function(_HomesState) then) =
      __$HomesStateCopyWithImpl<$Res>;
  @override
  $Res call({int pageIndex});
}

/// @nodoc
class __$HomesStateCopyWithImpl<$Res> extends _$HomesStateCopyWithImpl<$Res>
    implements _$HomesStateCopyWith<$Res> {
  __$HomesStateCopyWithImpl(
      _HomesState _value, $Res Function(_HomesState) _then)
      : super(_value, (v) => _then(v as _HomesState));

  @override
  _HomesState get _value => super._value as _HomesState;

  @override
  $Res call({
    Object? pageIndex = freezed,
  }) {
    return _then(_HomesState(
      pageIndex: pageIndex == freezed
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomesState implements _HomesState {
  _$_HomesState({this.pageIndex = 0});

  @JsonKey(defaultValue: 0)
  @override
  final int pageIndex;

  @override
  String toString() {
    return 'HomesState(pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomesState &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality()
                    .equals(other.pageIndex, pageIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pageIndex);

  @JsonKey(ignore: true)
  @override
  _$HomesStateCopyWith<_HomesState> get copyWith =>
      __$HomesStateCopyWithImpl<_HomesState>(this, _$identity);
}

abstract class _HomesState implements HomesState {
  factory _HomesState({int pageIndex}) = _$_HomesState;

  @override
  int get pageIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomesStateCopyWith<_HomesState> get copyWith =>
      throw _privateConstructorUsedError;
}
