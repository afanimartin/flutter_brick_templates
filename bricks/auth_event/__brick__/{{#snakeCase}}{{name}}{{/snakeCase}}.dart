part of 'auth_bloc.dart';

/// AuthenticationEvent base class
abstract class {{#pascalCase}}{{name}}{{/pascalCase}} extends Equatable {
  /// AuthenticationEvent constructor
  const {{#pascalCase}}{{name}}{{/pascalCase}}();

  @override
  List<Object> get props => [];
}

/// AppStarted
class AppStarted extends {{#pascalCase}}{{name}}{{/pascalCase}} {
  /// AppStarted constructor
  const AppStarted({@required this.user});

  ///
  final UserModel user;

  @override
  List<Object> get props => [user];
}

///
class LogOut extends {{#pascalCase}}{{name}}{{/pascalCase}} {}