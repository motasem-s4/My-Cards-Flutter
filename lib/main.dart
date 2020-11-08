import 'package:flutter/material.dart';
import 'home_page.dart';
import 'widgets/master_card_logo.dart';

void main() {
  runApp(MyCards());
}

class MyCards extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
