import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String pass;
  const HomePage({super.key, required this.pass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Siz kiritgan password: $pass')),
    );
  }
}
