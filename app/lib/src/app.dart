import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rc_router/rc_router.dart';
import 'package:stashall/src/cupertino.dart';
import 'package:stashall/src/material.dart';
import 'package:stashall/src/routes/loading_route.dart';
import 'package:stashall/src/routes/password_detail_route.dart';
import 'package:stashall/src/routes/passwords_route.dart';
import 'package:stashall/src/widgets/auto_switch_platform_widget.dart';

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
    return AutoSwitchPlatform(
      cupertino: CupertinoStashallApp(
        title: title,
        rcRoutes: rcRoutes,
      ),
      material: MaterialStashallApp(
        title: title,
        rcRoutes: rcRoutes,
      ),
    );
  }
}
