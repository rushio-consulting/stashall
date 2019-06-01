import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:stashall/src/stores/server.dart';

class ServerProvider extends StatelessWidget {
  final Widget child;

  ServerProvider({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Provider<ServerStore>(
      builder: (c) => ServerStore(),
      child: child,
    );
  }
}
