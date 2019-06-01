import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rc_router/rc_router.dart';
import 'package:stashall/src/providers/client.dart';
import 'package:stashall/src/providers/server.dart';
import 'package:stashall/src/providers/store.dart';
import 'package:stashall/src/routes/loading_route.dart';
import 'package:stashall/src/routes/password_detail_route.dart';
import 'package:stashall/src/routes/passwords_route.dart';
import 'package:stashall/src/routes/signin_route.dart';
import 'package:stashall/src/stores/user.dart';
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
        SigninRoute(),
        LoadingRoute(),
        PasswordsRoute(),
        PasswordDetailRoute(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ServerProvider(
      child: ClientProvider(
        child: StoreProvider(
          child: App(
            title: title,
            rcRoutes: rcRoutes,
          ),
        ),
      ),
    );
  }
}

class App extends StatelessWidget {
  final String title;
  final RcRoutes rcRoutes;

  App({@required this.title, @required this.rcRoutes});

  @override
  Widget build(BuildContext context) {
    final userStore = Provider.of<UserStore>(context);
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoadingView(
        userStore: userStore,
      ),
      onGenerateRoute: rcRoutes.onGeneratedRoute,
    );
  }
}
