import 'package:flutter/material.dart';
import 'package:rc_router/rc_router.dart';
import 'package:stashall/src/views/loading/loading.dart';

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
