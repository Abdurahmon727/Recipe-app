part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class AuthenticationStatusChanged extends AuthenticationEvent {
  final AuthenticationStatus status;
  final Function(String message)? onError;

  const AuthenticationStatusChanged(this.status, {this.onError});

  @override
  List<Object> get props => [status];
}

class ChangeLanguageEvent extends AuthenticationEvent {
  final String language;

  const ChangeLanguageEvent(this.language);

  @override
  List<Object> get props => [language];
}

class AuthenticationLogoutRequested extends AuthenticationEvent {
  final Function() onSucces;
  final Function(String message) onError;

  const AuthenticationLogoutRequested({
    required this.onSucces,
    required this.onError,
  });
}

class AuthenticationGetStatus extends AuthenticationEvent {
  final Function(String message) onError;

  const AuthenticationGetStatus({required this.onError});

  @override
  List<Object> get props => [onError];
}

class AuthenticationGetRefreshedUserData extends AuthenticationEvent {
  @override
  List<Object> get props => [];
}

class AuthenticationUserDeleted extends AuthenticationEvent {
  final int id;
  final Function(String message) onError;

  const AuthenticationUserDeleted({
    required this.id,
    required this.onError,
  });

  @override
  List<Object> get props => [id, onError];
}

class AuthenticationUserRedirected extends AuthenticationEvent {
  final String link;
  final VoidCallback onSuccess;
  final ValueChanged<String> onFailure;

  const AuthenticationUserRedirected({
    required this.link,
    required this.onSuccess,
    required this.onFailure,
  });
}
