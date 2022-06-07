import 'package:flutter/material.dart';
import 'package:week6_1/manage_store.dart';

void main() {
  runApp(week6UI());
}

class week6UI extends StatelessWidget {
  const week6UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ManageStore(),
    );
  }
}
