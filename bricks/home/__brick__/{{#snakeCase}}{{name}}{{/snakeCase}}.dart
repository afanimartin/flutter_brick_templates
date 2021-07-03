import 'package:flutter/material.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}} extends StatelessWidget {
  const {{#pascalCase}}{{name}}{{/pascalCase}} ({Key key}) : super(key: key);

  static Route get route => MaterialPageRoute(builder: (_) => const {{#pascalCase}}{{name}}{{/pascalCase}}());

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Home Screen')),
    body: Center(child: Text('Welcome to your home!')),
    floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add))
  );
}