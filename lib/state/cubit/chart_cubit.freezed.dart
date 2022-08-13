// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() refreshing,
    required TResult Function(List<ChartEntity> chart) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? refreshing,
    TResult Function(List<ChartEntity> chart)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? refreshing,
    TResult Function(List<ChartEntity> chart)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChartLoadingState value) loading,
    required TResult Function(ChartRefreshingState value) refreshing,
    required TResult Function(ChartLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChartLoadingState value)? loading,
    TResult Function(ChartRefreshingState value)? refreshing,
    TResult Function(ChartLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChartLoadingState value)? loading,
    TResult Function(ChartRefreshingState value)? refreshing,
    TResult Function(ChartLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartStateCopyWith<$Res> {
  factory $ChartStateCopyWith(
          ChartState value, $Res Function(ChartState) then) =
      _$ChartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChartStateCopyWithImpl<$Res> implements $ChartStateCopyWith<$Res> {
  _$ChartStateCopyWithImpl(this._value, this._then);

  final ChartState _value;
  // ignore: unused_field
  final $Res Function(ChartState) _then;
}

/// @nodoc
abstract class _$$ChartLoadingStateCopyWith<$Res> {
  factory _$$ChartLoadingStateCopyWith(
          _$ChartLoadingState value, $Res Function(_$ChartLoadingState) then) =
      __$$ChartLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChartLoadingStateCopyWithImpl<$Res>
    extends _$ChartStateCopyWithImpl<$Res>
    implements _$$ChartLoadingStateCopyWith<$Res> {
  __$$ChartLoadingStateCopyWithImpl(
      _$ChartLoadingState _value, $Res Function(_$ChartLoadingState) _then)
      : super(_value, (v) => _then(v as _$ChartLoadingState));

  @override
  _$ChartLoadingState get _value => super._value as _$ChartLoadingState;
}

/// @nodoc

class _$ChartLoadingState implements ChartLoadingState {
  const _$ChartLoadingState();

  @override
  String toString() {
    return 'ChartState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChartLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() refreshing,
    required TResult Function(List<ChartEntity> chart) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? refreshing,
    TResult Function(List<ChartEntity> chart)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? refreshing,
    TResult Function(List<ChartEntity> chart)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChartLoadingState value) loading,
    required TResult Function(ChartRefreshingState value) refreshing,
    required TResult Function(ChartLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChartLoadingState value)? loading,
    TResult Function(ChartRefreshingState value)? refreshing,
    TResult Function(ChartLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChartLoadingState value)? loading,
    TResult Function(ChartRefreshingState value)? refreshing,
    TResult Function(ChartLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChartLoadingState implements ChartState {
  const factory ChartLoadingState() = _$ChartLoadingState;
}

/// @nodoc
abstract class _$$ChartRefreshingStateCopyWith<$Res> {
  factory _$$ChartRefreshingStateCopyWith(_$ChartRefreshingState value,
          $Res Function(_$ChartRefreshingState) then) =
      __$$ChartRefreshingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChartRefreshingStateCopyWithImpl<$Res>
    extends _$ChartStateCopyWithImpl<$Res>
    implements _$$ChartRefreshingStateCopyWith<$Res> {
  __$$ChartRefreshingStateCopyWithImpl(_$ChartRefreshingState _value,
      $Res Function(_$ChartRefreshingState) _then)
      : super(_value, (v) => _then(v as _$ChartRefreshingState));

  @override
  _$ChartRefreshingState get _value => super._value as _$ChartRefreshingState;
}

/// @nodoc

class _$ChartRefreshingState implements ChartRefreshingState {
  const _$ChartRefreshingState();

  @override
  String toString() {
    return 'ChartState.refreshing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChartRefreshingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() refreshing,
    required TResult Function(List<ChartEntity> chart) loaded,
  }) {
    return refreshing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? refreshing,
    TResult Function(List<ChartEntity> chart)? loaded,
  }) {
    return refreshing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? refreshing,
    TResult Function(List<ChartEntity> chart)? loaded,
    required TResult orElse(),
  }) {
    if (refreshing != null) {
      return refreshing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChartLoadingState value) loading,
    required TResult Function(ChartRefreshingState value) refreshing,
    required TResult Function(ChartLoadedState value) loaded,
  }) {
    return refreshing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChartLoadingState value)? loading,
    TResult Function(ChartRefreshingState value)? refreshing,
    TResult Function(ChartLoadedState value)? loaded,
  }) {
    return refreshing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChartLoadingState value)? loading,
    TResult Function(ChartRefreshingState value)? refreshing,
    TResult Function(ChartLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (refreshing != null) {
      return refreshing(this);
    }
    return orElse();
  }
}

abstract class ChartRefreshingState implements ChartState {
  const factory ChartRefreshingState() = _$ChartRefreshingState;
}

/// @nodoc
abstract class _$$ChartLoadedStateCopyWith<$Res> {
  factory _$$ChartLoadedStateCopyWith(
          _$ChartLoadedState value, $Res Function(_$ChartLoadedState) then) =
      __$$ChartLoadedStateCopyWithImpl<$Res>;
  $Res call({List<ChartEntity> chart});
}

/// @nodoc
class __$$ChartLoadedStateCopyWithImpl<$Res>
    extends _$ChartStateCopyWithImpl<$Res>
    implements _$$ChartLoadedStateCopyWith<$Res> {
  __$$ChartLoadedStateCopyWithImpl(
      _$ChartLoadedState _value, $Res Function(_$ChartLoadedState) _then)
      : super(_value, (v) => _then(v as _$ChartLoadedState));

  @override
  _$ChartLoadedState get _value => super._value as _$ChartLoadedState;

  @override
  $Res call({
    Object? chart = freezed,
  }) {
    return _then(_$ChartLoadedState(
      chart == freezed
          ? _value._chart
          : chart // ignore: cast_nullable_to_non_nullable
              as List<ChartEntity>,
    ));
  }
}

/// @nodoc

class _$ChartLoadedState implements ChartLoadedState {
  const _$ChartLoadedState(final List<ChartEntity> chart) : _chart = chart;

  final List<ChartEntity> _chart;
  @override
  List<ChartEntity> get chart {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chart);
  }

  @override
  String toString() {
    return 'ChartState.loaded(chart: $chart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartLoadedState &&
            const DeepCollectionEquality().equals(other._chart, _chart));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chart));

  @JsonKey(ignore: true)
  @override
  _$$ChartLoadedStateCopyWith<_$ChartLoadedState> get copyWith =>
      __$$ChartLoadedStateCopyWithImpl<_$ChartLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() refreshing,
    required TResult Function(List<ChartEntity> chart) loaded,
  }) {
    return loaded(chart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? refreshing,
    TResult Function(List<ChartEntity> chart)? loaded,
  }) {
    return loaded?.call(chart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? refreshing,
    TResult Function(List<ChartEntity> chart)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(chart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChartLoadingState value) loading,
    required TResult Function(ChartRefreshingState value) refreshing,
    required TResult Function(ChartLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChartLoadingState value)? loading,
    TResult Function(ChartRefreshingState value)? refreshing,
    TResult Function(ChartLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChartLoadingState value)? loading,
    TResult Function(ChartRefreshingState value)? refreshing,
    TResult Function(ChartLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ChartLoadedState implements ChartState {
  const factory ChartLoadedState(final List<ChartEntity> chart) =
      _$ChartLoadedState;

  List<ChartEntity> get chart;
  @JsonKey(ignore: true)
  _$$ChartLoadedStateCopyWith<_$ChartLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
