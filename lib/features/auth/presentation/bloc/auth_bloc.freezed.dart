// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  ValueChanged<String> get onFailure => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phoneNumber, ValueChanged<String> onFailure)
        signIn,
    required TResult Function(String smsCode, ValueChanged<String> onFailure,
            VoidCallback onSuccess, dynamic required)
        checkSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, ValueChanged<String> onFailure)?
        signIn,
    TResult? Function(String smsCode, ValueChanged<String> onFailure,
            VoidCallback onSuccess, dynamic required)?
        checkSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, ValueChanged<String> onFailure)?
        signIn,
    TResult Function(String smsCode, ValueChanged<String> onFailure,
            VoidCallback onSuccess, dynamic required)?
        checkSms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_CheckSms value) checkSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_CheckSms value)? checkSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_CheckSms value)? checkSms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
  @useResult
  $Res call({ValueChanged<String> onFailure});
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onFailure = null,
  }) {
    return _then(_value.copyWith(
      onFailure: null == onFailure
          ? _value.onFailure
          : onFailure // ignore: cast_nullable_to_non_nullable
              as ValueChanged<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$$_SignInCopyWith(_$_SignIn value, $Res Function(_$_SignIn) then) =
      __$$_SignInCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, ValueChanged<String> onFailure});
}

/// @nodoc
class __$$_SignInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignIn>
    implements _$$_SignInCopyWith<$Res> {
  __$$_SignInCopyWithImpl(_$_SignIn _value, $Res Function(_$_SignIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? onFailure = null,
  }) {
    return _then(_$_SignIn(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      onFailure: null == onFailure
          ? _value.onFailure
          : onFailure // ignore: cast_nullable_to_non_nullable
              as ValueChanged<String>,
    ));
  }
}

/// @nodoc

class _$_SignIn implements _SignIn {
  const _$_SignIn({required this.phoneNumber, required this.onFailure});

  @override
  final String phoneNumber;
  @override
  final ValueChanged<String> onFailure;

  @override
  String toString() {
    return 'AuthEvent.signIn(phoneNumber: $phoneNumber, onFailure: $onFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignIn &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.onFailure, onFailure) ||
                other.onFailure == onFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, onFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInCopyWith<_$_SignIn> get copyWith =>
      __$$_SignInCopyWithImpl<_$_SignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phoneNumber, ValueChanged<String> onFailure)
        signIn,
    required TResult Function(String smsCode, ValueChanged<String> onFailure,
            VoidCallback onSuccess, dynamic required)
        checkSms,
  }) {
    return signIn(phoneNumber, onFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, ValueChanged<String> onFailure)?
        signIn,
    TResult? Function(String smsCode, ValueChanged<String> onFailure,
            VoidCallback onSuccess, dynamic required)?
        checkSms,
  }) {
    return signIn?.call(phoneNumber, onFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, ValueChanged<String> onFailure)?
        signIn,
    TResult Function(String smsCode, ValueChanged<String> onFailure,
            VoidCallback onSuccess, dynamic required)?
        checkSms,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(phoneNumber, onFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_CheckSms value) checkSms,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_CheckSms value)? checkSms,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_CheckSms value)? checkSms,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements AuthEvent {
  const factory _SignIn(
      {required final String phoneNumber,
      required final ValueChanged<String> onFailure}) = _$_SignIn;

  String get phoneNumber;
  @override
  ValueChanged<String> get onFailure;
  @override
  @JsonKey(ignore: true)
  _$$_SignInCopyWith<_$_SignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CheckSmsCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$$_CheckSmsCopyWith(
          _$_CheckSms value, $Res Function(_$_CheckSms) then) =
      __$$_CheckSmsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String smsCode,
      ValueChanged<String> onFailure,
      VoidCallback onSuccess,
      dynamic required});
}

/// @nodoc
class __$$_CheckSmsCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_CheckSms>
    implements _$$_CheckSmsCopyWith<$Res> {
  __$$_CheckSmsCopyWithImpl(
      _$_CheckSms _value, $Res Function(_$_CheckSms) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smsCode = null,
    Object? onFailure = null,
    Object? onSuccess = null,
    Object? required = null,
  }) {
    return _then(_$_CheckSms(
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      onFailure: null == onFailure
          ? _value.onFailure
          : onFailure // ignore: cast_nullable_to_non_nullable
              as ValueChanged<String>,
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      required: null == required ? _value.required : required,
    ));
  }
}

/// @nodoc

class _$_CheckSms implements _CheckSms {
  const _$_CheckSms(
      {required this.smsCode,
      required this.onFailure,
      required this.onSuccess,
      this.required});

  @override
  final String smsCode;
  @override
  final ValueChanged<String> onFailure;
  @override
  final VoidCallback onSuccess;
  @override
  final dynamic required;

  @override
  String toString() {
    return 'AuthEvent.checkSms(smsCode: $smsCode, onFailure: $onFailure, onSuccess: $onSuccess, required: $required)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckSms &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode) &&
            (identical(other.onFailure, onFailure) ||
                other.onFailure == onFailure) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @override
  int get hashCode => Object.hash(runtimeType, smsCode, onFailure, onSuccess,
      const DeepCollectionEquality().hash(required));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckSmsCopyWith<_$_CheckSms> get copyWith =>
      __$$_CheckSmsCopyWithImpl<_$_CheckSms>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phoneNumber, ValueChanged<String> onFailure)
        signIn,
    required TResult Function(String smsCode, ValueChanged<String> onFailure,
            VoidCallback onSuccess, dynamic required)
        checkSms,
  }) {
    return checkSms(smsCode, onFailure, onSuccess, required);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, ValueChanged<String> onFailure)?
        signIn,
    TResult? Function(String smsCode, ValueChanged<String> onFailure,
            VoidCallback onSuccess, dynamic required)?
        checkSms,
  }) {
    return checkSms?.call(smsCode, onFailure, onSuccess, required);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, ValueChanged<String> onFailure)?
        signIn,
    TResult Function(String smsCode, ValueChanged<String> onFailure,
            VoidCallback onSuccess, dynamic required)?
        checkSms,
    required TResult orElse(),
  }) {
    if (checkSms != null) {
      return checkSms(smsCode, onFailure, onSuccess, required);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_CheckSms value) checkSms,
  }) {
    return checkSms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_CheckSms value)? checkSms,
  }) {
    return checkSms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_CheckSms value)? checkSms,
    required TResult orElse(),
  }) {
    if (checkSms != null) {
      return checkSms(this);
    }
    return orElse();
  }
}

abstract class _CheckSms implements AuthEvent {
  const factory _CheckSms(
      {required final String smsCode,
      required final ValueChanged<String> onFailure,
      required final VoidCallback onSuccess,
      final dynamic required}) = _$_CheckSms;

  String get smsCode;
  @override
  ValueChanged<String> get onFailure;
  VoidCallback get onSuccess;
  dynamic get required;
  @override
  @JsonKey(ignore: true)
  _$$_CheckSmsCopyWith<_$_CheckSms> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  AuthenticationStatus get authStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({AuthenticationStatus authStatus});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authStatus = null,
  }) {
    return _then(_value.copyWith(
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthenticationStatus authStatus});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authStatus = null,
  }) {
    return _then(_$_AuthState(
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState({this.authStatus = AuthenticationStatus.unauthenticated});

  @override
  @JsonKey()
  final AuthenticationStatus authStatus;

  @override
  String toString() {
    return 'AuthState(authStatus: $authStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState({final AuthenticationStatus authStatus}) =
      _$_AuthState;

  @override
  AuthenticationStatus get authStatus;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
