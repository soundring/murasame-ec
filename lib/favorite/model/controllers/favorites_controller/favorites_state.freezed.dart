// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'favorites_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoritesStateTearOff {
  const _$FavoritesStateTearOff();

  _FavoritesState call({List<int> favoriteProductIds = const <int>[]}) {
    return _FavoritesState(
      favoriteProductIds: favoriteProductIds,
    );
  }
}

/// @nodoc
const $FavoritesState = _$FavoritesStateTearOff();

/// @nodoc
mixin _$FavoritesState {
  List<int> get favoriteProductIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoritesStateCopyWith<FavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res>;
  $Res call({List<int> favoriteProductIds});
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  final FavoritesState _value;
  // ignore: unused_field
  final $Res Function(FavoritesState) _then;

  @override
  $Res call({
    Object? favoriteProductIds = freezed,
  }) {
    return _then(_value.copyWith(
      favoriteProductIds: favoriteProductIds == freezed
          ? _value.favoriteProductIds
          : favoriteProductIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$FavoritesStateCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory _$FavoritesStateCopyWith(
          _FavoritesState value, $Res Function(_FavoritesState) then) =
      __$FavoritesStateCopyWithImpl<$Res>;
  @override
  $Res call({List<int> favoriteProductIds});
}

/// @nodoc
class __$FavoritesStateCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res>
    implements _$FavoritesStateCopyWith<$Res> {
  __$FavoritesStateCopyWithImpl(
      _FavoritesState _value, $Res Function(_FavoritesState) _then)
      : super(_value, (v) => _then(v as _FavoritesState));

  @override
  _FavoritesState get _value => super._value as _FavoritesState;

  @override
  $Res call({
    Object? favoriteProductIds = freezed,
  }) {
    return _then(_FavoritesState(
      favoriteProductIds: favoriteProductIds == freezed
          ? _value.favoriteProductIds
          : favoriteProductIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_FavoritesState implements _FavoritesState {
  _$_FavoritesState({this.favoriteProductIds = const <int>[]});

  @JsonKey(defaultValue: const <int>[])
  @override
  final List<int> favoriteProductIds;

  @override
  String toString() {
    return 'FavoritesState(favoriteProductIds: $favoriteProductIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoritesState &&
            (identical(other.favoriteProductIds, favoriteProductIds) ||
                const DeepCollectionEquality()
                    .equals(other.favoriteProductIds, favoriteProductIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(favoriteProductIds);

  @JsonKey(ignore: true)
  @override
  _$FavoritesStateCopyWith<_FavoritesState> get copyWith =>
      __$FavoritesStateCopyWithImpl<_FavoritesState>(this, _$identity);
}

abstract class _FavoritesState implements FavoritesState {
  factory _FavoritesState({List<int> favoriteProductIds}) = _$_FavoritesState;

  @override
  List<int> get favoriteProductIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FavoritesStateCopyWith<_FavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}
