// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'suggestion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SuggestionModel _$SuggestionModelFromJson(Map<String, dynamic> json) {
  return _SuggestionModel.fromJson(json);
}

/// @nodoc
mixin _$SuggestionModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuggestionModelCopyWith<SuggestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestionModelCopyWith<$Res> {
  factory $SuggestionModelCopyWith(
          SuggestionModel value, $Res Function(SuggestionModel) then) =
      _$SuggestionModelCopyWithImpl<$Res, SuggestionModel>;
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class _$SuggestionModelCopyWithImpl<$Res, $Val extends SuggestionModel>
    implements $SuggestionModelCopyWith<$Res> {
  _$SuggestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SuggestionModelCopyWith<$Res>
    implements $SuggestionModelCopyWith<$Res> {
  factory _$$_SuggestionModelCopyWith(
          _$_SuggestionModel value, $Res Function(_$_SuggestionModel) then) =
      __$$_SuggestionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class __$$_SuggestionModelCopyWithImpl<$Res>
    extends _$SuggestionModelCopyWithImpl<$Res, _$_SuggestionModel>
    implements _$$_SuggestionModelCopyWith<$Res> {
  __$$_SuggestionModelCopyWithImpl(
      _$_SuggestionModel _value, $Res Function(_$_SuggestionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$_SuggestionModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SuggestionModel implements _SuggestionModel {
  const _$_SuggestionModel({required this.id, required this.title});

  factory _$_SuggestionModel.fromJson(Map<String, dynamic> json) =>
      _$$_SuggestionModelFromJson(json);

  @override
  final int id;
  @override
  final String title;

  @override
  String toString() {
    return 'SuggestionModel(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuggestionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuggestionModelCopyWith<_$_SuggestionModel> get copyWith =>
      __$$_SuggestionModelCopyWithImpl<_$_SuggestionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SuggestionModelToJson(
      this,
    );
  }
}

abstract class _SuggestionModel implements SuggestionModel {
  const factory _SuggestionModel(
      {required final int id,
      required final String title}) = _$_SuggestionModel;

  factory _SuggestionModel.fromJson(Map<String, dynamic> json) =
      _$_SuggestionModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_SuggestionModelCopyWith<_$_SuggestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
