// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authenticated_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticatedUserModel _$AuthenticatedUserModelFromJson(
    Map<String, dynamic> json) {
  return _AuthenticatedUserModel.fromJson(json);
}

/// @nodoc
mixin _$AuthenticatedUserModel {
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'bio')
  String get bio => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticatedUserModelCopyWith<AuthenticatedUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatedUserModelCopyWith<$Res> {
  factory $AuthenticatedUserModelCopyWith(AuthenticatedUserModel value,
          $Res Function(AuthenticatedUserModel) then) =
      _$AuthenticatedUserModelCopyWithImpl<$Res, AuthenticatedUserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'profile_image') String profileImage,
      @JsonKey(name: 'bio') String bio,
      @JsonKey(name: 'id') int id,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$AuthenticatedUserModelCopyWithImpl<$Res,
        $Val extends AuthenticatedUserModel>
    implements $AuthenticatedUserModelCopyWith<$Res> {
  _$AuthenticatedUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? fullName = null,
    Object? profileImage = null,
    Object? bio = null,
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthenticatedUserModelCopyWith<$Res>
    implements $AuthenticatedUserModelCopyWith<$Res> {
  factory _$$_AuthenticatedUserModelCopyWith(_$_AuthenticatedUserModel value,
          $Res Function(_$_AuthenticatedUserModel) then) =
      __$$_AuthenticatedUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'profile_image') String profileImage,
      @JsonKey(name: 'bio') String bio,
      @JsonKey(name: 'id') int id,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$$_AuthenticatedUserModelCopyWithImpl<$Res>
    extends _$AuthenticatedUserModelCopyWithImpl<$Res,
        _$_AuthenticatedUserModel>
    implements _$$_AuthenticatedUserModelCopyWith<$Res> {
  __$$_AuthenticatedUserModelCopyWithImpl(_$_AuthenticatedUserModel _value,
      $Res Function(_$_AuthenticatedUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? fullName = null,
    Object? profileImage = null,
    Object? bio = null,
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_AuthenticatedUserModel(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticatedUserModel implements _AuthenticatedUserModel {
  _$_AuthenticatedUserModel(
      {@JsonKey(name: 'email') this.email = '',
      @JsonKey(name: 'full_name') this.fullName = '',
      @JsonKey(name: 'profile_image') this.profileImage = '',
      @JsonKey(name: 'bio') this.bio = '',
      @JsonKey(name: 'id') this.id = 0,
      this.createdAt = '',
      this.updatedAt = ''});

  factory _$_AuthenticatedUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticatedUserModelFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'profile_image')
  final String profileImage;
  @override
  @JsonKey(name: 'bio')
  final String bio;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updatedAt;

  @override
  String toString() {
    return 'AuthenticatedUserModel(email: $email, fullName: $fullName, profileImage: $profileImage, bio: $bio, id: $id, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticatedUserModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, fullName, profileImage,
      bio, id, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticatedUserModelCopyWith<_$_AuthenticatedUserModel> get copyWith =>
      __$$_AuthenticatedUserModelCopyWithImpl<_$_AuthenticatedUserModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticatedUserModelToJson(
      this,
    );
  }
}

abstract class _AuthenticatedUserModel implements AuthenticatedUserModel {
  factory _AuthenticatedUserModel(
      {@JsonKey(name: 'email') final String email,
      @JsonKey(name: 'full_name') final String fullName,
      @JsonKey(name: 'profile_image') final String profileImage,
      @JsonKey(name: 'bio') final String bio,
      @JsonKey(name: 'id') final int id,
      final String createdAt,
      final String updatedAt}) = _$_AuthenticatedUserModel;

  factory _AuthenticatedUserModel.fromJson(Map<String, dynamic> json) =
      _$_AuthenticatedUserModel.fromJson;

  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'profile_image')
  String get profileImage;
  @override
  @JsonKey(name: 'bio')
  String get bio;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticatedUserModelCopyWith<_$_AuthenticatedUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
