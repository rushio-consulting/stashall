import 'package:flutter/src/widgets/framework.dart';
import 'package:rc_router/rc_router.dart';
import 'package:stashall/src/views/passwords/passwords.dart';

class PasswordsRoute extends RcRoute {
  static String routePath = '/passwords';

  PasswordsRoute() : super(path: PasswordsRoute.routePath);

  @override
  Widget build(BuildContext context) {
    return PasswordsView();
  }
}
