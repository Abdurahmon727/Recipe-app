import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/authentication_status.dart';
import '../../domain/usecase/check_code.dart';
import '../../domain/usecase/sent_code.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  String id = '';
  AuthBloc(final bool hasAccount)
      : super(_AuthState(
          authStatus: hasAccount
              ? AuthenticationStatus.authenticated
              : AuthenticationStatus.unauthenticated,
        )) {
    on<_SignIn>((event, emit) async {
      final usecase = SentCodeUseCase();
      final result = await usecase.call(event.phoneNumber);
      result.either((value) {
        event.onFailure(value.errorMessage);
      }, (value) {
        id = value;
      });
    });
    on<_CheckSms>((event, emit) async {
      final usecase = CheckSmsUseCase();
      final result =
          await usecase.call(SmsParams(smsCode: event.smsCode, id: id));
      result.either((value) {
        event.onFailure(value.errorMessage);
      }, (_) {
        event.onSuccess;
      });
    });
  }
}
