import 'package:flutter/widgets.dart';
import 'package:stashall/src/views/passwords/password_detail/material.dart';
import 'package:stashall/src/widgets/auto_switch_platform_widget.dart';

class PasswordDetailView extends StatefulWidget {
  @override
  _PasswordDetailViewState createState() => _PasswordDetailViewState();
}

class _PasswordDetailViewState extends State<PasswordDetailView> {
  @override
  Widget build(BuildContext context) {
    return AutoSwitchPlatform(
      cupertino: Container(),
      material: MaterialPasswordDetail(),
    );
  }
}
