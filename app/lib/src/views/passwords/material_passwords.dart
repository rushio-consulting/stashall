import 'package:flutter/material.dart';

class MaterialPasswords extends StatelessWidget {
  final List<Widget> children;

  MaterialPasswords({@required this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passwords'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 16,
        ),
        children: children,
      ),
    );
  }
}
