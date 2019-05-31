import 'package:flutter/widgets.dart';
import 'package:stashall/src/views/passwords/passwords/cupertino.dart';
import 'package:stashall/src/views/passwords/passwords/material.dart';
import 'package:stashall/src/widgets/auto_switch_platform_widget.dart';
import 'package:stashall/src/widgets/password.dart';

class PasswordsView extends StatefulWidget {
  @override
  _PasswordsViewState createState() => _PasswordsViewState();
}

class _PasswordsViewState extends State<PasswordsView> {
  @override
  Widget build(BuildContext context) {
    return AutoSwitchPlatform(
      cupertino: CupertinoPasswords(),
      material: MaterialPasswords(
        children: <Widget>[
          Password(
            url: 'google.fr',
            description: 'Google password for rushio',
          ),
        ],
      ),
    );
  }
}
