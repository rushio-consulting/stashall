import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:rc_router/rc_router.dart';
import 'package:stashall/src/stores/user.dart';
import 'package:stashall/src/views/loading/loading.dart';

class LoadingRoute extends RcRoute {
  static String routePath = '/loading';

  LoadingRoute() : super(path: LoadingRoute.routePath);

  @override
  Widget build(BuildContext context) {
    final userStore = Provider.of<UserStore>(context);

    return LoadingView(
      userStore: userStore,
    );
  }
}
