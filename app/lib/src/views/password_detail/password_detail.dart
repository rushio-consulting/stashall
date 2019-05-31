import 'package:flutter/widgets.dart';
import 'package:stashall/src/views/password_detail/material_password_detail.dart';

class PasswordDetailView extends StatefulWidget {
  @override
  _PasswordDetailViewState createState() => _PasswordDetailViewState();
}

class _PasswordDetailViewState extends State<PasswordDetailView> {
  @override
  Widget build(BuildContext context) {
    return MaterialPasswordDetail();
  }
}
