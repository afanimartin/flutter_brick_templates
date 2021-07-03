part of 'auth_bloc.dart';

enum AuthStatus { authenticated, unauthenticated }

class {{#pascalCase}}{{name}}{{/pascalCase}} extends Equatable {
  ///
  const {{#pascalCase}}{{name}}{{/pascalCase}}._({
    this.status = AuthStatus.unauthenticated,
    this.user = UserModel.empty,
  });

  ///
  const {{#pascalCase}}{{name}}{{/pascalCase}}.authenticated(UserModel user)
      : this._(
          status: AuthStatus.authenticated,
          user: user,
        );

  ///
  const {{#pascalCase}}{{name}}{{/pascalCase}}.unauthenticated()
      : this._(status: AuthStatus.unauthenticated);

  ///
  final AuthStatus status;

  ///
  final UserModel user;

  @override
  List<Object> get props => [status, user];
}