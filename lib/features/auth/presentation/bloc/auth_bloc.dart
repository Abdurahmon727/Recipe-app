import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:remote_recipe/core/usecases/usecase.dart';
import 'package:remote_recipe/features/auth/domain/usecase/log_out.dart';

import '../../../../core/data/service_locator.dart';
import '../../../../core/models/authentication_status.dart';
import '../../domain/repository/auth_repo.dart';
import '../../domain/usecase/check_code.dart';
import '../../domain/usecase/sent_code.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _repository;
  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;
  AuthBloc(AuthRepository repository)
      : _repository = repository,
        super(_AuthState()) {
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
    _authenticationStatusSubscription = _repository.status.listen(
      (status) {
        add(AuthEvent.changedStatus(status: status));
      },
    );
    on<_LogOut>((event, emit) async {
      final usecase = LogOutUseCase(_repository);
      final result = await usecase.call(NoParams());
      result.either((value) {
        event.onFailure(value.errorMessage);
      }, (_) {});
    });
  }
}
