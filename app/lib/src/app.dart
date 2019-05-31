import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rc_router/rc_router.dart';
import 'package:stashall/src/routes/loading_route.dart';
import 'package:stashall/src/routes/password_detail_route.dart';
import 'package:stashall/src/routes/passwords_route.dart';
import 'package:stashall/src/views/loading/loading.dart';

class StashallApp extends StatefulWidget {
  @override
  _StashallAppState createState() => _StashallAppState();
}

class _StashallAppState extends State<StashallApp> {
  RcRoutes rcRoutes;
  final title = 'Stashall';

  @override
  void initState() {
    super.initState();
    rcRoutes = RcRoutes(
      routes: [
        LoadingRoute(),
        PasswordsRoute(),
        PasswordDetailRoute(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS || Platform.isMacOS) {
      return CupertinoStashallApp(
        title: title,
        rcRoutes: rcRoutes,
      );
    }
    return MaterialStashallApp(
      title: title,
      rcRoutes: rcRoutes,
    );
  }
}

class MaterialStashallApp extends StatelessWidget {
  final RcRoutes rcRoutes;
  final String title;

  MaterialStashallApp({@required this.rcRoutes, @required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoadingView(),
      onGenerateRoute: rcRoutes.onGeneratedRoute,
    );
  }
}

class CupertinoStashallApp extends StatelessWidget {
  final RcRoutes rcRoutes;
  final String title;

  CupertinoStashallApp({@required this.rcRoutes, @required this.title});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: title,
      home: LoadingView(),
      onGenerateRoute: rcRoutes.onGeneratedRoute,
    );
  }
}
