import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:generated_io/generated_io.dart';
import 'package:stashall/src/stores/server.dart';

class ClientProvider extends StatelessWidget {
  final Widget child;

  ClientProvider({@required this.child});

  @override
  Widget build(BuildContext context) {
    final serverStore = Provider.of<ServerStore>(context);
    return Observer(
      builder: (c) {
        final channel = serverStore.channel;
        return MultiProvider(
          providers: [
            Provider<AuthenticationServiceClient>(
              builder: (c) => AuthenticationServiceClient(channel),
            ),
          ],
          child: child,
        );
      },
    );
  }
}
