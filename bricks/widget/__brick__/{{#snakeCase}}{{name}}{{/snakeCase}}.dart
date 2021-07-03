import 'package:flutter/material.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}} extends StatelessWidget {
  const {{#pascalCase}}{{name}}{{/pascalCase}} ({Key key}) : super(key: key);

  {{#routable}}
  static Route get route => MaterialPageRoute(builder: (_) => const {{#pascalCase}}{{name}}{{/pascalCase}}());
  {{/routable}}

  @override 
  Widget build(BuildContext context) => const SizedBox();
}