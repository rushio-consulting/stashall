import 'package:flutter/widgets.dart';
import 'package:generated_io/generated_io.dart';
import 'package:provider/provider.dart';
import 'package:stashall/src/stores/password.dart';
import 'package:stashall/src/stores/user.dart';

class StoreProvider extends StatelessWidget {
  final Widget child;

  StoreProvider({@required this.child});

  @override
  Widget build(BuildContext context) {
    final authClient = Provider.of<AuthenticationServiceClient>(context);
    return MultiProvider(
      providers: [
        Provider(
          builder: (c) => PasswordsStore(),
        ),
        Provider(
          builder: (c) => UserStore(authClient),
        )
      ],
      child: child,
    );
  }
}
