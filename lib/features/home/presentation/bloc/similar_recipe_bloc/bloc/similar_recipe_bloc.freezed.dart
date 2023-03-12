// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'similar_recipe_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SimilarRecipeEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getRecipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getRecipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getRecipes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecipes value) getRecipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecipes value)? getRecipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecipes value)? getRecipes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimilarRecipeEventCopyWith<SimilarRecipeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimilarRecipeEventCopyWith<$Res> {
  factory $SimilarRecipeEventCopyWith(
          SimilarRecipeEvent value, $Res Function(SimilarRecipeEvent) then) =
      _$SimilarRecipeEventCopyWithImpl<$Res, SimilarRecipeEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$SimilarRecipeEventCopyWithImpl<$Res, $Val extends SimilarRecipeEvent>
    implements $SimilarRecipeEventCopyWith<$Res> {
  _$SimilarRecipeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetRecipesCopyWith<$Res>
    implements $SimilarRecipeEventCopyWith<$Res> {
  factory _$$_GetRecipesCopyWith(
          _$_GetRecipes value, $Res Function(_$_GetRecipes) then) =
      __$$_GetRecipesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_GetRecipesCopyWithImpl<$Res>
    extends _$SimilarRecipeEventCopyWithImpl<$Res, _$_GetRecipes>
    implements _$$_GetRecipesCopyWith<$Res> {
  __$$_GetRecipesCopyWithImpl(
      _$_GetRecipes _value, $Res Function(_$_GetRecipes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_GetRecipes(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetRecipes implements _GetRecipes {
  const _$_GetRecipes(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'SimilarRecipeEvent.getRecipes(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetRecipes &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetRecipesCopyWith<_$_GetRecipes> get copyWith =>
      __$$_GetRecipesCopyWithImpl<_$_GetRecipes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getRecipes,
  }) {
    return getRecipes(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getRecipes,
  }) {
    return getRecipes?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getRecipes,
    required TResult orElse(),
  }) {
    if (getRecipes != null) {
      return getRecipes(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecipes value) getRecipes,
  }) {
    return getRecipes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecipes value)? getRecipes,
  }) {
    return getRecipes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecipes value)? getRecipes,
    required TResult orElse(),
  }) {
    if (getRecipes != null) {
      return getRecipes(this);
    }
    return orElse();
  }
}

abstract class _GetRecipes implements SimilarRecipeEvent {
  const factory _GetRecipes(final int id) = _$_GetRecipes;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_GetRecipesCopyWith<_$_GetRecipes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SimilarRecipeState {
  FormzStatus get status => throw _privateConstructorUsedError;
  List<RecipeEntity> get entities => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimilarRecipeStateCopyWith<SimilarRecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimilarRecipeStateCopyWith<$Res> {
  factory $SimilarRecipeStateCopyWith(
          SimilarRecipeState value, $Res Function(SimilarRecipeState) then) =
      _$SimilarRecipeStateCopyWithImpl<$Res, SimilarRecipeState>;
  @useResult
  $Res call(
      {FormzStatus status, List<RecipeEntity> entities, String errorMessage});
}

/// @nodoc
class _$SimilarRecipeStateCopyWithImpl<$Res, $Val extends SimilarRecipeState>
    implements $SimilarRecipeStateCopyWith<$Res> {
  _$SimilarRecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? entities = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      entities: null == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<RecipeEntity>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SimilarRecipeStateCopyWith<$Res>
    implements $SimilarRecipeStateCopyWith<$Res> {
  factory _$$_SimilarRecipeStateCopyWith(_$_SimilarRecipeState value,
          $Res Function(_$_SimilarRecipeState) then) =
      __$$_SimilarRecipeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzStatus status, List<RecipeEntity> entities, String errorMessage});
}

/// @nodoc
class __$$_SimilarRecipeStateCopyWithImpl<$Res>
    extends _$SimilarRecipeStateCopyWithImpl<$Res, _$_SimilarRecipeState>
    implements _$$_SimilarRecipeStateCopyWith<$Res> {
  __$$_SimilarRecipeStateCopyWithImpl(
      _$_SimilarRecipeState _value, $Res Function(_$_SimilarRecipeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? entities = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_SimilarRecipeState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      entities: null == entities
          ? _value._entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<RecipeEntity>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SimilarRecipeState implements _SimilarRecipeState {
  const _$_SimilarRecipeState(
      {this.status = FormzStatus.pure,
      final List<RecipeEntity> entities = const [],
      this.errorMessage = ''})
      : _entities = entities;

  @override
  @JsonKey()
  final FormzStatus status;
  final List<RecipeEntity> _entities;
  @override
  @JsonKey()
  List<RecipeEntity> get entities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entities);
  }

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'SimilarRecipeState(status: $status, entities: $entities, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SimilarRecipeState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._entities, _entities) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_entities), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SimilarRecipeStateCopyWith<_$_SimilarRecipeState> get copyWith =>
      __$$_SimilarRecipeStateCopyWithImpl<_$_SimilarRecipeState>(
          this, _$identity);
}

abstract class _SimilarRecipeState implements SimilarRecipeState {
  const factory _SimilarRecipeState(
      {final FormzStatus status,
      final List<RecipeEntity> entities,
      final String errorMessage}) = _$_SimilarRecipeState;

  @override
  FormzStatus get status;
  @override
  List<RecipeEntity> get entities;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_SimilarRecipeStateCopyWith<_$_SimilarRecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}
