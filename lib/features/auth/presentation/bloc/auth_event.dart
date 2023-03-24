part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn(
      {required String phoneNumber,
      required ValueChanged<String> onFailure}) = _SignIn;
  const factory AuthEvent.checkSms(
      {required String smsCode,
      required ValueChanged<String> onFailure,
      required VoidCallback onSuccess,
      required}) = _CheckSms;
}
