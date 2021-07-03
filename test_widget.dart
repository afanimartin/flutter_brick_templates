import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({Key key}) : super(key: key);

  static Route get route =>
      MaterialPageRoute(builder: (_) => const TestWidget());

  @override
  Widget build(BuildContext context) => const SizedBox();
}
