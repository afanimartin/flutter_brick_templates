class {{#pascalCase}}{{name}}{{/pascalCase}} extends Cubit<LoginState> {
  ///
  {{#pascalCase}}{{name}}{{/pascalCase}}({@required AuthRepository authRepository}) : _authRepository = authRepository, super(InitialState());

  ///
  final AuthRepository _authRepository;

  ///
  void login() {
    _authRepository.logInWithGoogleAccount();
  }
}