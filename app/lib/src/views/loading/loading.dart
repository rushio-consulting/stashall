import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
import 'package:stashall/src/routes/passwords_route.dart';
import 'package:stashall/src/routes/signin_route.dart';
import 'package:stashall/src/stores/user.dart';

class LoadingView extends StatefulWidget {
  final UserStore userStore;

  LoadingView({@required this.userStore});

  @override
  _LoadingViewState createState() => _LoadingViewState();
}

class _LoadingViewState extends State<LoadingView> {
  ReactionDisposer notLoggedDisposer;
  ReactionDisposer loggedDisposer;
  ReactionDisposer errorDisposer;

  @override
  void initState() {
    super.initState();

    widget.userStore.checkIsLogged();

    notLoggedDisposer =
        when((_) => widget.userStore.isLogged == UserLoggedState.notLogged, () {
      Navigator.of(context).pushReplacementNamed(SigninRoute.routePath);
    });

    loggedDisposer =
        when((_) => widget.userStore.isLogged == UserLoggedState.logged, () {
      Navigator.of(context).pushReplacementNamed(PasswordsRoute.routePath);
    });

    errorDisposer =
        when((_) => widget.userStore.isLogged == UserLoggedState.error, () {
      debugPrint('${widget.userStore.errorMessage}');
    });
  }

  @override
  void dispose() {
    super.dispose();
    notLoggedDisposer();
    loggedDisposer();
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
