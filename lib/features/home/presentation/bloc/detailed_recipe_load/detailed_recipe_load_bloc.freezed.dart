// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detailed_recipe_load_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailedRecipeLoadEvent {
  int get id => throw _privateConstructorUsedError;
  ValueChanged<String> get onFailure => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, ValueChanged<String> onFailure) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, ValueChanged<String> onFailure)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, ValueChanged<String> onFailure)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedRecipeLoadEventCopyWith<DetailedRecipeLoadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedRecipeLoadEventCopyWith<$Res> {
  factory $DetailedRecipeLoadEventCopyWith(DetailedRecipeLoadEvent value,
          $Res Function(DetailedRecipeLoadEvent) then) =
      _$DetailedRecipeLoadEventCopyWithImpl<$Res, DetailedRecipeLoadEvent>;
  @useResult
  $Res call({int id, ValueChanged<String> onFailure});
}

/// @nodoc
class _$DetailedRecipeLoadEventCopyWithImpl<$Res,
        $Val extends DetailedRecipeLoadEvent>
    implements $DetailedRecipeLoadEventCopyWith<$Res> {
  _$DetailedRecipeLoadEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? onFailure = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      onFailure: null == onFailure
          ? _value.onFailure
          : onFailure // ignore: cast_nullable_to_non_nullable
              as ValueChanged<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoadCopyWith<$Res>
    implements $DetailedRecipeLoadEventCopyWith<$Res> {
  factory _$$_LoadCopyWith(_$_Load value, $Res Function(_$_Load) then) =
      __$$_LoadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, ValueChanged<String> onFailure});
}

/// @nodoc
class __$$_LoadCopyWithImpl<$Res>
    extends _$DetailedRecipeLoadEventCopyWithImpl<$Res, _$_Load>
    implements _$$_LoadCopyWith<$Res> {
  __$$_LoadCopyWithImpl(_$_Load _value, $Res Function(_$_Load) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? onFailure = null,
  }) {
    return _then(_$_Load(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      onFailure: null == onFailure
          ? _value.onFailure
          : onFailure // ignore: cast_nullable_to_non_nullable
              as ValueChanged<String>,
    ));
  }
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load({required this.id, required this.onFailure});

  @override
  final int id;
  @override
  final ValueChanged<String> onFailure;

  @override
  String toString() {
    return 'DetailedRecipeLoadEvent.load(id: $id, onFailure: $onFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Load &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.onFailure, onFailure) ||
                other.onFailure == onFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, onFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadCopyWith<_$_Load> get copyWith =>
      __$$_LoadCopyWithImpl<_$_Load>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, ValueChanged<String> onFailure) load,
  }) {
    return load(id, onFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, ValueChanged<String> onFailure)? load,
  }) {
    return load?.call(id, onFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, ValueChanged<String> onFailure)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(id, onFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements DetailedRecipeLoadEvent {
  const factory _Load(
      {required final int id,
      required final ValueChanged<String> onFailure}) = _$_Load;

  @override
  int get id;
  @override
  ValueChanged<String> get onFailure;
  @override
  @JsonKey(ignore: true)
  _$$_LoadCopyWith<_$_Load> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailedRecipeLoadState {
  FormzStatus get status => throw _privateConstructorUsedError;
  RecipeEntity get entity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedRecipeLoadStateCopyWith<DetailedRecipeLoadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedRecipeLoadStateCopyWith<$Res> {
  factory $DetailedRecipeLoadStateCopyWith(DetailedRecipeLoadState value,
          $Res Function(DetailedRecipeLoadState) then) =
      _$DetailedRecipeLoadStateCopyWithImpl<$Res, DetailedRecipeLoadState>;
  @useResult
  $Res call({FormzStatus status, RecipeEntity entity});
}

/// @nodoc
class _$DetailedRecipeLoadStateCopyWithImpl<$Res,
        $Val extends DetailedRecipeLoadState>
    implements $DetailedRecipeLoadStateCopyWith<$Res> {
  _$DetailedRecipeLoadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? entity = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as RecipeEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailedRecipeLoadStateCopyWith<$Res>
    implements $DetailedRecipeLoadStateCopyWith<$Res> {
  factory _$$_DetailedRecipeLoadStateCopyWith(_$_DetailedRecipeLoadState value,
          $Res Function(_$_DetailedRecipeLoadState) then) =
      __$$_DetailedRecipeLoadStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormzStatus status, RecipeEntity entity});
}

/// @nodoc
class __$$_DetailedRecipeLoadStateCopyWithImpl<$Res>
    extends _$DetailedRecipeLoadStateCopyWithImpl<$Res,
        _$_DetailedRecipeLoadState>
    implements _$$_DetailedRecipeLoadStateCopyWith<$Res> {
  __$$_DetailedRecipeLoadStateCopyWithImpl(_$_DetailedRecipeLoadState _value,
      $Res Function(_$_DetailedRecipeLoadState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? entity = null,
  }) {
    return _then(_$_DetailedRecipeLoadState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as RecipeEntity,
    ));
  }
}

/// @nodoc

class _$_DetailedRecipeLoadState implements _DetailedRecipeLoadState {
  _$_DetailedRecipeLoadState(
      {this.status = FormzStatus.pure,
      this.entity = const RecipeEntity(
          healthyScore: 10,
          id: 12,
          image: '2',
          instructions: '',
          readyInMinutes: 1,
          title: '')});

  @override
  @JsonKey()
  final FormzStatus status;
  @override
  @JsonKey()
  final RecipeEntity entity;

  @override
  String toString() {
    return 'DetailedRecipeLoadState(status: $status, entity: $entity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailedRecipeLoadState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailedRecipeLoadStateCopyWith<_$_DetailedRecipeLoadState>
      get copyWith =>
          __$$_DetailedRecipeLoadStateCopyWithImpl<_$_DetailedRecipeLoadState>(
              this, _$identity);
}

abstract class _DetailedRecipeLoadState implements DetailedRecipeLoadState {
  factory _DetailedRecipeLoadState(
      {final FormzStatus status,
      final RecipeEntity entity}) = _$_DetailedRecipeLoadState;

  @override
  FormzStatus get status;
  @override
  RecipeEntity get entity;
  @override
  @JsonKey(ignore: true)
  _$$_DetailedRecipeLoadStateCopyWith<_$_DetailedRecipeLoadState>
      get copyWith => throw _privateConstructorUsedError;
}
