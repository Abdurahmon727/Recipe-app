// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  String get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getSuggestions,
    required TResult Function(String query) getResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? getSuggestions,
    TResult? Function(String query)? getResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getSuggestions,
    TResult Function(String query)? getResults,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSuggestions value) getSuggestions,
    required TResult Function(_GetResults value) getResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSuggestions value)? getSuggestions,
    TResult? Function(_GetResults value)? getResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSuggestions value)? getSuggestions,
    TResult Function(_GetResults value)? getResults,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchEventCopyWith<SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetSuggestionsCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$$_GetSuggestionsCopyWith(
          _$_GetSuggestions value, $Res Function(_$_GetSuggestions) then) =
      __$$_GetSuggestionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_GetSuggestionsCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_GetSuggestions>
    implements _$$_GetSuggestionsCopyWith<$Res> {
  __$$_GetSuggestionsCopyWithImpl(
      _$_GetSuggestions _value, $Res Function(_$_GetSuggestions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_GetSuggestions(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetSuggestions implements _GetSuggestions {
  const _$_GetSuggestions(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.getSuggestions(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSuggestions &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSuggestionsCopyWith<_$_GetSuggestions> get copyWith =>
      __$$_GetSuggestionsCopyWithImpl<_$_GetSuggestions>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getSuggestions,
    required TResult Function(String query) getResults,
  }) {
    return getSuggestions(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? getSuggestions,
    TResult? Function(String query)? getResults,
  }) {
    return getSuggestions?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getSuggestions,
    TResult Function(String query)? getResults,
    required TResult orElse(),
  }) {
    if (getSuggestions != null) {
      return getSuggestions(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSuggestions value) getSuggestions,
    required TResult Function(_GetResults value) getResults,
  }) {
    return getSuggestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSuggestions value)? getSuggestions,
    TResult? Function(_GetResults value)? getResults,
  }) {
    return getSuggestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSuggestions value)? getSuggestions,
    TResult Function(_GetResults value)? getResults,
    required TResult orElse(),
  }) {
    if (getSuggestions != null) {
      return getSuggestions(this);
    }
    return orElse();
  }
}

abstract class _GetSuggestions implements SearchEvent {
  const factory _GetSuggestions(final String query) = _$_GetSuggestions;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$_GetSuggestionsCopyWith<_$_GetSuggestions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetResultsCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$$_GetResultsCopyWith(
          _$_GetResults value, $Res Function(_$_GetResults) then) =
      __$$_GetResultsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_GetResultsCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_GetResults>
    implements _$$_GetResultsCopyWith<$Res> {
  __$$_GetResultsCopyWithImpl(
      _$_GetResults _value, $Res Function(_$_GetResults) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_GetResults(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetResults implements _GetResults {
  const _$_GetResults(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.getResults(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetResults &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetResultsCopyWith<_$_GetResults> get copyWith =>
      __$$_GetResultsCopyWithImpl<_$_GetResults>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getSuggestions,
    required TResult Function(String query) getResults,
  }) {
    return getResults(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? getSuggestions,
    TResult? Function(String query)? getResults,
  }) {
    return getResults?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getSuggestions,
    TResult Function(String query)? getResults,
    required TResult orElse(),
  }) {
    if (getResults != null) {
      return getResults(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSuggestions value) getSuggestions,
    required TResult Function(_GetResults value) getResults,
  }) {
    return getResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSuggestions value)? getSuggestions,
    TResult? Function(_GetResults value)? getResults,
  }) {
    return getResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSuggestions value)? getSuggestions,
    TResult Function(_GetResults value)? getResults,
    required TResult orElse(),
  }) {
    if (getResults != null) {
      return getResults(this);
    }
    return orElse();
  }
}

abstract class _GetResults implements SearchEvent {
  const factory _GetResults(final String query) = _$_GetResults;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$_GetResultsCopyWith<_$_GetResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  FormzStatus get status => throw _privateConstructorUsedError;
  List<String> get suggestions => throw _privateConstructorUsedError;
  List<RecipeEntity> get results => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {FormzStatus status,
      List<String> suggestions,
      List<RecipeEntity> results,
      String errorMessage});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? suggestions = null,
    Object? results = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      suggestions: null == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<RecipeEntity>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzStatus status,
      List<String> suggestions,
      List<RecipeEntity> results,
      String errorMessage});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchState>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? suggestions = null,
    Object? results = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_SearchState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      suggestions: null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<RecipeEntity>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {this.status = FormzStatus.pure,
      final List<String> suggestions = const [],
      final List<RecipeEntity> results = const [],
      this.errorMessage = ''})
      : _suggestions = suggestions,
        _results = results;

  @override
  @JsonKey()
  final FormzStatus status;
  final List<String> _suggestions;
  @override
  @JsonKey()
  List<String> get suggestions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  final List<RecipeEntity> _results;
  @override
  @JsonKey()
  List<RecipeEntity> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'SearchState(status: $status, suggestions: $suggestions, results: $results, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_suggestions),
      const DeepCollectionEquality().hash(_results),
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {final FormzStatus status,
      final List<String> suggestions,
      final List<RecipeEntity> results,
      final String errorMessage}) = _$_SearchState;

  @override
  FormzStatus get status;
  @override
  List<String> get suggestions;
  @override
  List<RecipeEntity> get results;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
