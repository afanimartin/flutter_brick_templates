import 'package:flutter/material.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}} extends StatelessWidget {
  const {{#pascalCase}}{{name}}{{/pascalCase}}({@required this.url,this.top=100, this.height=100, Key key}) : super(key: key);

  final String url;

  final double top;

  final double height;

  static Route get route => MaterialPageRoute(builder: (_) => const {{#pascalCase}}{{name}}{{/pascalCase}}());

  @override
  Widget build(BuildContext context) => Scaffold(
    body: BlocProvider(
      create: (_) {},
      child: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: top),
            child: Image.asset(url, height: height)
          ),
          const SizedBox(height: height),
          _GoogleLogInButton()
        ])
      )
    )
  );
}

class _GoogleLogInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Theme.of(context).primaryColorDark)),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/google_logo.png',
              height: 40,
            ),
            const SizedBox(width: 4),
            Text(
              'Log in with Google',
              style: TextStyle(
                  fontSize: 26,
                  letterSpacing: 1.2),
            )
          ],
        ),
      ));
}