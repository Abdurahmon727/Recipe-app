import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../../../core/data/storage_repository.dart';
import '../../../../../core/models/authentication_status.dart';
import '../../../domain/entities/authenticated_user.dart';
import '../../../domain/repositories/authentication.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  // final StreamController<String> _stateController = StreamController();
  // Stream<String> get linkStream => _stateController.stream;

  // Sink<String> get stateSink => _stateController.sink;
  // final eventStream = const EventChannel('poc.deeplink.flutter.dev/events');

  // //Method channel creation
  // final platform = const MethodChannel('poc.deeplink.flutter.dev/channel');
  // // Use Cases

  AuthenticationBloc({
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(const AuthenticationState.unknown()) {
    //Checking application start by deep link
    // startUri().then((value) async {
    //   await _onRedirected(value);
    // });
    //Checking broadcast stream, if deep link was clicked in opened appication
    // eventStream.receiveBroadcastStream().listen((d) => _onRedirected(d));
    on<AuthenticationLogoutRequested>((event, emit) async {
      await StorageRepository.putString('token', '');
      await StorageRepository.putString('refresh', '');
      emit(AuthenticationState.unauthenticated());
      // final response = await loginViaExternalPlatformsUseCases.call(Logout());

      // response.either(
      //   (failure) {
      //     TODO: Apply logic of handling logout failure
      //   },
      //   (success) async {
      //     await StorageRepository.putString('token', '');
      //     await StorageRepository.putString('refresh', '');
      //     emit(const AuthenticationState.unauthenticated());
      //   },
      // );
    });

    on<AuthenticationGetRefreshedUserData>((event, emit) async {
      // final response =
      //     await loginViaExternalPlatformsUseCases.call(RefreshToken());

      // response.either(
      //   (failure) {
      //     emit(const AuthenticationState.unauthenticated());
      //   },
      //   (success) {
      //     add(AuthenticationGetStatus(
      //       onError: (String message) {},
      //     ));
      //   },
      // );
    });

    on<AuthenticationStatusChanged>((event, emit) async {
      if (state.status != AuthenticationStatus.redirected) {
        switch (event.status) {
          case AuthenticationStatus.unauthenticated:
            emit(const AuthenticationState.unauthenticated());
            break;
          case AuthenticationStatus.authenticated:
            // final response = await getUserUseCases.call(NoParams());
            // response.either(
            //   (failure) {
            //     add(AuthenticationGetRefreshedUserData());
            //     // emit(const AuthenticationState.unauthenticated());
            //     // if (event.onError != null) {
            //     //   event.onError!(failure.errorMessage);
            //     // }
            //   },
            //   (user) {
            emit(const AuthenticationState.authenticated(AuthenticatedUser()));
            //   },
            // );
            break;
          default:
            emit(const AuthenticationState.unknown());
        }
      }
    });

    on<AuthenticationUserRedirected>((event, emit) async {
      // final response = await getUserUseCases.call(NoParams());
      // response.either(
      //   (failure) {
      //     add(AuthenticationGetRefreshedUserData());
      //   },
      //   (user) {
      //     emit(AuthenticationState.redirected(event.link, user));
      //   },
      // );
    });

    on<AuthenticationGetStatus>((event, emit) async {
      final either = await _authenticationRepository.getProfile();

      either.either(
        (failure) {
          add(AuthenticationGetRefreshedUserData());
          // event.onError(failure.errorMessage);
        },
        ((user) {
          emit(AuthenticationState.authenticated(user));
        }),
      );
      add(
        const AuthenticationStatusChanged(AuthenticationStatus.authenticated),
      );
    });

    on<AuthenticationUserDeleted>((event, emit) async {
      await StorageRepository.putString('token', '');
      await StorageRepository.putString('refresh', '');
      emit(const AuthenticationState.unauthenticated());
    });

    _authenticationStatusSubscription = _authenticationRepository.status.listen(
      (status) {
        add(AuthenticationStatusChanged(status));
      },
    );
  }

  final AuthenticationRepository _authenticationRepository;
  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    // _stateController.close();
    return super.close();
  }

  // Future<String> startUri() async {
  //   try {
  //     print('Inside start uri');
  //     return await platform.invokeMethod('initialLink');
  //   } on PlatformException catch (e) {
  //     return "Failed to Invoke: '${e.message}'.";
  //   }
  // }

  // Future<void> _onRedirected(String uri) async {
  //   if (uri.isNotEmpty) {
  //     await Future.delayed(const Duration(milliseconds: 2000));
  //     add(AuthenticationUserRedirected(
  //       link: uri,
  //       onSuccess: () {},
  //       onFailure: (_) {},
  //     ));
  //   }
  //   // Here can be any uri analysis, checking tokens etc, if it’s necessary
  //   // Throw deep link URI into the BloC's stream
  //   stateSink.add(uri);
  // }
}
