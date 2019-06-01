import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:stashall/src/stores/password.dart';
import 'package:stashall/src/widgets/password.dart';

class PasswordsView extends StatefulWidget {
  @override
  _PasswordsViewState createState() => _PasswordsViewState();
}

class _PasswordsViewState extends State<PasswordsView> {
  @override
  Widget build(BuildContext context) {
    final passwordsStore = Provider.of<PasswordsStore>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Passwords'),
      ),
      body: Observer(
        builder: (c) {
          if (passwordsStore.passwords.isEmpty) {
            return Center(
              child: Text('No password yet create one !'),
            );
          }
          return ListView(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 16,
            ),
            children: passwordsStore.passwords
                .map((p) => PasswordWidget(
                      url: p.url,
                      description: p.description,
                    ))
                .toList(),
          );
        },
      ),
    );
  }
}
