import 'package:flutter/material.dart';

class PasswordDetailView extends StatefulWidget {
  @override
  _PasswordDetailViewState createState() => _PasswordDetailViewState();
}

class _PasswordDetailViewState extends State<PasswordDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password detail'),
      ),
      body: Text('password details'),
    );
  }
}
