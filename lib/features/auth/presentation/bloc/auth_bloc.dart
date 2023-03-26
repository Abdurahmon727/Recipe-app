import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/authentication_status.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/repository/auth_repo.dart';
import '../../domain/usecase/check_code.dart';
import '../../domain/usecase/log_out.dart';
import '../../domain/usecase/sent_code.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _repository;
  late StreamSubscription<User?> _streamSubscription;

  AuthBloc(AuthRepository repository)
      : _repository = repository,
        super(const _AuthState()) {
    _streamSubscription = _repository.status.listen(
      (user) {
        print(user);
        if (user != null &&
            state.authStatus != AuthenticationStatus.authenticated) {
          add(const AuthEvent.changedStatus(
              status: AuthenticationStatus.authenticated));
        } else if (user == null &&
            state.authStatus != AuthenticationStatus.unauthenticated) {
          add(const AuthEvent.changedStatus(
              status: AuthenticationStatus.unauthenticated));
        }
      },
    );
    on<_SignIn>((event, emit) async {
      final usecase = SentCodeUseCase(_repository);
      final result = await usecase.call(event.phoneNumber);
      result.either((value) {
        event.onFailure(value.errorMessage);
      }, (_) {
        event.onSuccess('');
      });
    });
    on<_CheckSms>((event, emit) async {
      final usecase = CheckSmsUseCase(_repository);
      final result = await usecase.call(event.smsCode);
      result.either((value) {
        event.onFailure(value.errorMessage);
      }, (_) {
        emit(state.copyWith(
          authStatus: AuthenticationStatus.authenticated,
        ));
      });
    });
    on<_ChangedStatus>((event, emit) {
      emit(state.copyWith(authStatus: event.status));
    });

    on<_LogOut>((event, emit) async {
      final usecase = LogOutUseCase(_repository);
      final result = await usecase.call(NoParams());
      result.either((value) {
        event.onFailure(value.errorMessage);
      }, (_) {});
    });
  }
}
