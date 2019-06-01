import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:grpc/grpc.dart';

class ChannelProvider extends StatelessWidget {
  final String host;
  final int port;
  final Widget child;

  ChannelProvider({@required this.child, @required this.host, this.port = 443});

  @override
  Widget build(BuildContext context) {
    return Provider<ClientChannel>(
      builder: (c) {
        return ClientChannel(
          host,
          port: port,
          options: ChannelOptions(
            credentials: ChannelCredentials.insecure(),
          ),
        );
      },
      dispose: (c, clientChannel) {
        clientChannel.terminate();
      },
      child: child,
    );
  }
}
