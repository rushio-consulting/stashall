import 'package:flutter/cupertino.dart';
import 'package:rc_router/rc_router.dart';
import 'package:stashall/src/views/loading/loading.dart';

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
