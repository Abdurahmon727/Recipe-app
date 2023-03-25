part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn(
      {required String phoneNumber,
      required ValueChanged<String> onFailure,
      required ValueChanged<String> onSuccess}) = _SignIn;
  const factory AuthEvent.checkSms(
      {required String smsCode,
      required ValueChanged<String> onFailure,
      required}) = _CheckSms;
  const factory AuthEvent.changedStatus(
      {required AuthenticationStatus status}) = _ChangedStatus;
  const factory AuthEvent.logOut({required ValueChanged<String> onFailure}) =
      _LogOut;
}
