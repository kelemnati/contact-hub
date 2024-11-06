part of 'authentication_bloc.dart';

enum AuthenticationStatus { authenticated, unauthenticated, unknown }

class AuthenticationState extends Equatable {
  final AuthenticationStatus status;
  final User? user;

  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.user,
  });

  // for the unkown user
  const AuthenticationState.unknown() : this._();

  // for authenticated user
  const AuthenticationState.authenticated(User user)
      : this._(status: AuthenticationStatus.authenticated);

  // for unauthenticated user
  const AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  @override
  List<Object?> get props => [status, user];
}
