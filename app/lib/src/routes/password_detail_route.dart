import 'package:flutter/src/widgets/framework.dart';
import 'package:rc_router/rc_router.dart';
import 'package:stashall/src/views/password_detail/password_detail.dart';

class PasswordDetailRoute extends RcRoute {
  static String routePath = '/passwords/:id';

  static String generateRoute(String id) {
    return RcRoute.generateRoute(routePath, pathParams: {'id': id});
  }

  PasswordDetailRoute() : super(path: PasswordDetailRoute.routePath);

  @override
  Widget build(BuildContext context) {
    return PasswordDetailView();
  }
}
