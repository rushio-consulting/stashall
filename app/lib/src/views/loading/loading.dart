import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:stashall/src/routes/passwords_route.dart';
import 'package:stashall/src/views/loading/cupertino_loading.dart';
import 'package:stashall/src/views/loading/material_loading.dart';

class LoadingView extends StatefulWidget {
  @override
  _LoadingViewState createState() => _LoadingViewState();
}

class _LoadingViewState extends State<LoadingView> {
  final isLoggedFuture = Future<bool>.delayed(Duration(seconds: 2), () => true);

  @override
  void initState() {
    super.initState();

    isLoggedFuture.then((isLogged) {
      if (isLogged) {
        Navigator.of(context).pushReplacementNamed(PasswordsRoute.routePath);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS || Platform.isMacOS) {
      return CupertinoLoading();
    }
    return MaterialLoading();
  }
}
