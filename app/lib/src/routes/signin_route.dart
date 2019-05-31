import 'package:flutter/src/widgets/framework.dart';
import 'package:rc_router/rc_router.dart';

class SigninRoute extends RcRoute {
  static String routePath = '/signin';

  SigninRoute() : super(path: SigninRoute.routePath);

  @override
  Widget build(BuildContext context) {
    return SigninView();
  }
}
