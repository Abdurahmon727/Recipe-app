import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:remote_recipe/core/models/authentication_status.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(_AuthState()) {
    on<AuthEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
