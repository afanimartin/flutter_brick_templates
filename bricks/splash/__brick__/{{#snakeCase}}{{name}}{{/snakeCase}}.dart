import 'package:flutter/material.dart';

///
class {{#pascalCase}}{{name}}{{/pascalCase}} extends StatelessWidget {
  ///
  const {{#pascalCase}}{{name}}{{/pascalCase}} ({@required this.url, this.height=100, Key key}) : super(key: key);

  ///
  final String url;

  ///
  final double height;

  static Route get route => MaterialPageRoute(builder: (_) => const {{#pascalCase}}{{name}}{{/pascalCase}}());

  @override 
  Widget build(BuildContext context) => Container(
    child: Center(child: Image.asset(url, height: height))
  );
}