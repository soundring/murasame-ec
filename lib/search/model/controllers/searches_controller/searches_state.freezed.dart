// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'searches_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchesStateTearOff {
  const _$SearchesStateTearOff();

  _SearchesState call({List<Product> searchProductStocks = const <Product>[]}) {
    return _SearchesState(
      searchProductStocks: searchProductStocks,
    );
  }
}

/// @nodoc
const $SearchesState = _$SearchesStateTearOff();

/// @nodoc
mixin _$SearchesState {
  List<Product> get searchProductStocks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchesStateCopyWith<SearchesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchesStateCopyWith<$Res> {
  factory $SearchesStateCopyWith(
          SearchesState value, $Res Function(SearchesState) then) =
      _$SearchesStateCopyWithImpl<$Res>;
  $Res call({List<Product> searchProductStocks});
}

/// @nodoc
class _$SearchesStateCopyWithImpl<$Res>
    implements $SearchesStateCopyWith<$Res> {
  _$SearchesStateCopyWithImpl(this._value, this._then);

  final SearchesState _value;
  // ignore: unused_field
  final $Res Function(SearchesState) _then;

  @override
  $Res call({
    Object? searchProductStocks = freezed,
  }) {
    return _then(_value.copyWith(
      searchProductStocks: searchProductStocks == freezed
          ? _value.searchProductStocks
          : searchProductStocks // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
abstract class _$SearchesStateCopyWith<$Res>
    implements $SearchesStateCopyWith<$Res> {
  factory _$SearchesStateCopyWith(
          _SearchesState value, $Res Function(_SearchesState) then) =
      __$SearchesStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> searchProductStocks});
}

/// @nodoc
class __$SearchesStateCopyWithImpl<$Res>
    extends _$SearchesStateCopyWithImpl<$Res>
    implements _$SearchesStateCopyWith<$Res> {
  __$SearchesStateCopyWithImpl(
      _SearchesState _value, $Res Function(_SearchesState) _then)
      : super(_value, (v) => _then(v as _SearchesState));

  @override
  _SearchesState get _value => super._value as _SearchesState;

  @override
  $Res call({
    Object? searchProductStocks = freezed,
  }) {
    return _then(_SearchesState(
      searchProductStocks: searchProductStocks == freezed
          ? _value.searchProductStocks
          : searchProductStocks // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_SearchesState implements _SearchesState {
  _$_SearchesState({this.searchProductStocks = const <Product>[]});

  @JsonKey(defaultValue: const <Product>[])
  @override
  final List<Product> searchProductStocks;

  @override
  String toString() {
    return 'SearchesState(searchProductStocks: $searchProductStocks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchesState &&
            (identical(other.searchProductStocks, searchProductStocks) ||
                const DeepCollectionEquality()
                    .equals(other.searchProductStocks, searchProductStocks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchProductStocks);

  @JsonKey(ignore: true)
  @override
  _$SearchesStateCopyWith<_SearchesState> get copyWith =>
      __$SearchesStateCopyWithImpl<_SearchesState>(this, _$identity);
}

abstract class _SearchesState implements SearchesState {
  factory _SearchesState({List<Product> searchProductStocks}) =
      _$_SearchesState;

  @override
  List<Product> get searchProductStocks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchesStateCopyWith<_SearchesState> get copyWith =>
      throw _privateConstructorUsedError;
}
