import 'package:flutter.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}} extends StatelessWidget {
  const {{#pascalCase}}{{name}}{{/pascalCase}}({@required this.authenticationRepository, Key key}) : super(key: key);

  final AuthenticationRepository authenticationRepository;

  @override
  Widget build(BuildContext context) => RepositoryProvider.value(
        value: authenticationRepository,
        child: BlocProvider<AuthenticationBloc>(
          create: (_) => AuthenticationBloc(
            authenticationRepository: authenticationRepository,
          ),
          child: const _AppView(),
        ),
      );
}

class _AppView extends StatefulWidget {
  const _AppView({Key key}) : super(key: key);

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<_AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState;

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: _navigatorKey,
        theme: ThemeData(),
        builder: (context, child) =>
            BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            switch (state.status) {
              case AuthenticationStatus.authenticated:
                _navigator.pushAndRemoveUntil<void>(
                  HomeScreen.route,
                  (route) => false,
                );
                break;

              case AuthenticationStatus.unauthenticated:
                _navigator.pushAndRemoveUntil<void>(
                  LogInScreen.route,
                  (route) => false,
                );
                break;
            }
          },
          child: child,
        ),
        onGenerateRoute: (_) => SplashScreen.route,
      );
}