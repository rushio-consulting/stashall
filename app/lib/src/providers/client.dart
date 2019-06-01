import 'package:flutter/widgets.dart';
import 'package:grpc/grpc.dart';
import 'package:provider/provider.dart';
import 'package:generated_io/generated_io.dart';

class ClientProvider extends StatelessWidget {
  final Widget child;

  ClientProvider({@required this.child});

  @override
  Widget build(BuildContext context) {
    final channel = Provider.of<ClientChannel>(context);
    return MultiProvider(
      providers: [
        Provider<AuthenticationServiceClient>(
          builder: (c) => AuthenticationServiceClient(channel),
        ),
      ],
      child: child,
    );
  }
}
