import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:stashall/src/views/passwords/cupertino_passwords.dart';
import 'package:stashall/src/views/passwords/material_passwords.dart';
import 'package:stashall/src/widgets/password.dart';

class PasswordsView extends StatefulWidget {
  @override
  _PasswordsViewState createState() => _PasswordsViewState();
}

class _PasswordsViewState extends State<PasswordsView> {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS || Platform.isMacOS) {
      return CupertinoPasswords();
    }
    return MaterialPasswords(
      children: <Widget>[
        Password(
          url: 'google.fr',
          description: 'Google password for rushio',
        )
      ],
    );
  }
}
