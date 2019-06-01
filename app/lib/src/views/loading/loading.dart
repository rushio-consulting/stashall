import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stashall/src/routes/passwords_route.dart';
import 'package:stashall/src/routes/signin_route.dart';

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
      } else {
        Navigator.of(context).pushReplacementNamed(SigninRoute.routePath);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
