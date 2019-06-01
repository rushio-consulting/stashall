import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:stashall/src/stores/password.dart';

class StoreProvider extends StatelessWidget {
  final Widget child;

  StoreProvider({@required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          builder: (c) => PasswordsStore(),
        ),
      ],
      child: child,
    );
  }
}
