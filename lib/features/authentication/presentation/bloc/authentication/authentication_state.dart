part of 'authentication_bloc.dart';

class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.user = const AuthenticatedUser(email: '', fullName: ''),
    this.profiles = const [],
    this.dontRebuild = false,
    this.shareLink = '',
  });

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.authenticated(
    AuthenticatedUser user, {
    bool dontRebuild = false,
  }) : this._(
          status: AuthenticationStatus.authenticated,
          user: user,
          dontRebuild: dontRebuild,
        );

  const AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  const AuthenticationState.redirected(String shareLink, AuthenticatedUser user)
      : this._(
          status: AuthenticationStatus.redirected,
          shareLink: shareLink,
          user: user,
        );

  final AuthenticationStatus status;
  final AuthenticatedUser user;
  final List<AuthenticatedUser> profiles;
  final bool dontRebuild;
  final String shareLink;

  @override
  List<Object> get props => [status, user, profiles, dontRebuild];
}
