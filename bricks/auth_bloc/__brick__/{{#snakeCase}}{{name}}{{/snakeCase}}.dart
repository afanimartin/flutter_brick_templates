part 'auth_state.dart';
part 'auth_event.dart';

/// Authentication bloc
class {{#pascalCase}}{{name}}{{/pascalCase}}
    extends Bloc<AuthEvent, AuthState> {
  /// Constructor
  {{#pascalCase}}{{name}}{{/pascalCase}}(
      {@required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const AuthState.unauthenticated()) {
    _userStreamSubscription?.cancel();

    _userStreamSubscription = _authRepository.user
        .listen((user) => add(AppStarted(user: user)));
  }

  final AuthRepository _authRepository;
  StreamSubscription _userStreamSubscription;

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is AppStarted) {
      yield _mapAppStartedToState(event);
    } else if (event is LogOut) {
      unawaited(_authRepository.logOut());
    }
  }

  AuthState _mapAppStartedToState(AppStarted event) =>
      event.user == UserModel.empty
          ? const AuthState.unauthenticated()
          : AuthState.authenticated(event.user);
}