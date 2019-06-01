import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rc_router/rc_router.dart';
import 'package:stashall/src/providers/store.dart';
import 'package:stashall/src/routes/loading_route.dart';
import 'package:stashall/src/routes/password_detail_route.dart';
import 'package:stashall/src/routes/passwords_route.dart';
import 'package:stashall/src/views/loading/loading.dart';

class StashallApp extends StatefulWidget {
  @override
  _StashallAppState createState() => _StashallAppState();
}

class _StashallAppState extends State<StashallApp> {
  final title = 'Stashall';
  RcRoutes rcRoutes;

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
    return StoreProvider(
      child: MaterialApp(
        title: title,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoadingView(),
        onGenerateRoute: rcRoutes.onGeneratedRoute,
      ),
    );
  }
}
