// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favourites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavouritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecipes,
    required TResult Function(RecipeEntity entity) addRecipe,
    required TResult Function(RecipeEntity entity) removeRecipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRecipes,
    TResult? Function(RecipeEntity entity)? addRecipe,
    TResult? Function(RecipeEntity entity)? removeRecipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecipes,
    TResult Function(RecipeEntity entity)? addRecipe,
    TResult Function(RecipeEntity entity)? removeRecipe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecipes value) getRecipes,
    required TResult Function(_AddRecipe value) addRecipe,
    required TResult Function(_RemoveRecipe value) removeRecipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecipes value)? getRecipes,
    TResult? Function(_AddRecipe value)? addRecipe,
    TResult? Function(_RemoveRecipe value)? removeRecipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecipes value)? getRecipes,
    TResult Function(_AddRecipe value)? addRecipe,
    TResult Function(_RemoveRecipe value)? removeRecipe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesEventCopyWith<$Res> {
  factory $FavouritesEventCopyWith(
          FavouritesEvent value, $Res Function(FavouritesEvent) then) =
      _$FavouritesEventCopyWithImpl<$Res, FavouritesEvent>;
}

/// @nodoc
class _$FavouritesEventCopyWithImpl<$Res, $Val extends FavouritesEvent>
    implements $FavouritesEventCopyWith<$Res> {
  _$FavouritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetRecipesCopyWith<$Res> {
  factory _$$_GetRecipesCopyWith(
          _$_GetRecipes value, $Res Function(_$_GetRecipes) then) =
      __$$_GetRecipesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetRecipesCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res, _$_GetRecipes>
    implements _$$_GetRecipesCopyWith<$Res> {
  __$$_GetRecipesCopyWithImpl(
      _$_GetRecipes _value, $Res Function(_$_GetRecipes) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetRecipes with DiagnosticableTreeMixin implements _GetRecipes {
  const _$_GetRecipes();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavouritesEvent.getRecipes()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'FavouritesEvent.getRecipes'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetRecipes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecipes,
    required TResult Function(RecipeEntity entity) addRecipe,
    required TResult Function(RecipeEntity entity) removeRecipe,
  }) {
    return getRecipes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRecipes,
    TResult? Function(RecipeEntity entity)? addRecipe,
    TResult? Function(RecipeEntity entity)? removeRecipe,
  }) {
    return getRecipes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecipes,
    TResult Function(RecipeEntity entity)? addRecipe,
    TResult Function(RecipeEntity entity)? removeRecipe,
    required TResult orElse(),
  }) {
    if (getRecipes != null) {
      return getRecipes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecipes value) getRecipes,
    required TResult Function(_AddRecipe value) addRecipe,
    required TResult Function(_RemoveRecipe value) removeRecipe,
  }) {
    return getRecipes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecipes value)? getRecipes,
    TResult? Function(_AddRecipe value)? addRecipe,
    TResult? Function(_RemoveRecipe value)? removeRecipe,
  }) {
    return getRecipes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecipes value)? getRecipes,
    TResult Function(_AddRecipe value)? addRecipe,
    TResult Function(_RemoveRecipe value)? removeRecipe,
    required TResult orElse(),
  }) {
    if (getRecipes != null) {
      return getRecipes(this);
    }
    return orElse();
  }
}

abstract class _GetRecipes implements FavouritesEvent {
  const factory _GetRecipes() = _$_GetRecipes;
}

/// @nodoc
abstract class _$$_AddRecipeCopyWith<$Res> {
  factory _$$_AddRecipeCopyWith(
          _$_AddRecipe value, $Res Function(_$_AddRecipe) then) =
      __$$_AddRecipeCopyWithImpl<$Res>;
  @useResult
  $Res call({RecipeEntity entity});
}

/// @nodoc
class __$$_AddRecipeCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res, _$_AddRecipe>
    implements _$$_AddRecipeCopyWith<$Res> {
  __$$_AddRecipeCopyWithImpl(
      _$_AddRecipe _value, $Res Function(_$_AddRecipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$_AddRecipe(
      null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as RecipeEntity,
    ));
  }
}

/// @nodoc

class _$_AddRecipe with DiagnosticableTreeMixin implements _AddRecipe {
  const _$_AddRecipe(this.entity);

  @override
  final RecipeEntity entity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavouritesEvent.addRecipe(entity: $entity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavouritesEvent.addRecipe'))
      ..add(DiagnosticsProperty('entity', entity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddRecipe &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddRecipeCopyWith<_$_AddRecipe> get copyWith =>
      __$$_AddRecipeCopyWithImpl<_$_AddRecipe>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecipes,
    required TResult Function(RecipeEntity entity) addRecipe,
    required TResult Function(RecipeEntity entity) removeRecipe,
  }) {
    return addRecipe(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRecipes,
    TResult? Function(RecipeEntity entity)? addRecipe,
    TResult? Function(RecipeEntity entity)? removeRecipe,
  }) {
    return addRecipe?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecipes,
    TResult Function(RecipeEntity entity)? addRecipe,
    TResult Function(RecipeEntity entity)? removeRecipe,
    required TResult orElse(),
  }) {
    if (addRecipe != null) {
      return addRecipe(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecipes value) getRecipes,
    required TResult Function(_AddRecipe value) addRecipe,
    required TResult Function(_RemoveRecipe value) removeRecipe,
  }) {
    return addRecipe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecipes value)? getRecipes,
    TResult? Function(_AddRecipe value)? addRecipe,
    TResult? Function(_RemoveRecipe value)? removeRecipe,
  }) {
    return addRecipe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecipes value)? getRecipes,
    TResult Function(_AddRecipe value)? addRecipe,
    TResult Function(_RemoveRecipe value)? removeRecipe,
    required TResult orElse(),
  }) {
    if (addRecipe != null) {
      return addRecipe(this);
    }
    return orElse();
  }
}

abstract class _AddRecipe implements FavouritesEvent {
  const factory _AddRecipe(final RecipeEntity entity) = _$_AddRecipe;

  RecipeEntity get entity;
  @JsonKey(ignore: true)
  _$$_AddRecipeCopyWith<_$_AddRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveRecipeCopyWith<$Res> {
  factory _$$_RemoveRecipeCopyWith(
          _$_RemoveRecipe value, $Res Function(_$_RemoveRecipe) then) =
      __$$_RemoveRecipeCopyWithImpl<$Res>;
  @useResult
  $Res call({RecipeEntity entity});
}

/// @nodoc
class __$$_RemoveRecipeCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res, _$_RemoveRecipe>
    implements _$$_RemoveRecipeCopyWith<$Res> {
  __$$_RemoveRecipeCopyWithImpl(
      _$_RemoveRecipe _value, $Res Function(_$_RemoveRecipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$_RemoveRecipe(
      null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as RecipeEntity,
    ));
  }
}

/// @nodoc

class _$_RemoveRecipe with DiagnosticableTreeMixin implements _RemoveRecipe {
  const _$_RemoveRecipe(this.entity);

  @override
  final RecipeEntity entity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavouritesEvent.removeRecipe(entity: $entity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavouritesEvent.removeRecipe'))
      ..add(DiagnosticsProperty('entity', entity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveRecipe &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveRecipeCopyWith<_$_RemoveRecipe> get copyWith =>
      __$$_RemoveRecipeCopyWithImpl<_$_RemoveRecipe>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecipes,
    required TResult Function(RecipeEntity entity) addRecipe,
    required TResult Function(RecipeEntity entity) removeRecipe,
  }) {
    return removeRecipe(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRecipes,
    TResult? Function(RecipeEntity entity)? addRecipe,
    TResult? Function(RecipeEntity entity)? removeRecipe,
  }) {
    return removeRecipe?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecipes,
    TResult Function(RecipeEntity entity)? addRecipe,
    TResult Function(RecipeEntity entity)? removeRecipe,
    required TResult orElse(),
  }) {
    if (removeRecipe != null) {
      return removeRecipe(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecipes value) getRecipes,
    required TResult Function(_AddRecipe value) addRecipe,
    required TResult Function(_RemoveRecipe value) removeRecipe,
  }) {
    return removeRecipe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecipes value)? getRecipes,
    TResult? Function(_AddRecipe value)? addRecipe,
    TResult? Function(_RemoveRecipe value)? removeRecipe,
  }) {
    return removeRecipe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecipes value)? getRecipes,
    TResult Function(_AddRecipe value)? addRecipe,
    TResult Function(_RemoveRecipe value)? removeRecipe,
    required TResult orElse(),
  }) {
    if (removeRecipe != null) {
      return removeRecipe(this);
    }
    return orElse();
  }
}

abstract class _RemoveRecipe implements FavouritesEvent {
  const factory _RemoveRecipe(final RecipeEntity entity) = _$_RemoveRecipe;

  RecipeEntity get entity;
  @JsonKey(ignore: true)
  _$$_RemoveRecipeCopyWith<_$_RemoveRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavouritesState {
  FormzStatus get status => throw _privateConstructorUsedError;
  List<RecipeEntity> get entities => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouritesStateCopyWith<FavouritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesStateCopyWith<$Res> {
  factory $FavouritesStateCopyWith(
          FavouritesState value, $Res Function(FavouritesState) then) =
      _$FavouritesStateCopyWithImpl<$Res, FavouritesState>;
  @useResult
  $Res call(
      {FormzStatus status, List<RecipeEntity> entities, String errorMessage});
}

/// @nodoc
class _$FavouritesStateCopyWithImpl<$Res, $Val extends FavouritesState>
    implements $FavouritesStateCopyWith<$Res> {
  _$FavouritesStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_FavouritesStateCopyWith<$Res>
    implements $FavouritesStateCopyWith<$Res> {
  factory _$$_FavouritesStateCopyWith(
          _$_FavouritesState value, $Res Function(_$_FavouritesState) then) =
      __$$_FavouritesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzStatus status, List<RecipeEntity> entities, String errorMessage});
}

/// @nodoc
class __$$_FavouritesStateCopyWithImpl<$Res>
    extends _$FavouritesStateCopyWithImpl<$Res, _$_FavouritesState>
    implements _$$_FavouritesStateCopyWith<$Res> {
  __$$_FavouritesStateCopyWithImpl(
      _$_FavouritesState _value, $Res Function(_$_FavouritesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? entities = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_FavouritesState(
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

class _$_FavouritesState
    with DiagnosticableTreeMixin
    implements _FavouritesState {
  const _$_FavouritesState(
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavouritesState(status: $status, entities: $entities, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavouritesState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('entities', entities))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavouritesState &&
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
  _$$_FavouritesStateCopyWith<_$_FavouritesState> get copyWith =>
      __$$_FavouritesStateCopyWithImpl<_$_FavouritesState>(this, _$identity);
}

abstract class _FavouritesState implements FavouritesState {
  const factory _FavouritesState(
      {final FormzStatus status,
      final List<RecipeEntity> entities,
      final String errorMessage}) = _$_FavouritesState;

  @override
  FormzStatus get status;
  @override
  List<RecipeEntity> get entities;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_FavouritesStateCopyWith<_$_FavouritesState> get copyWith =>
      throw _privateConstructorUsedError;
}
