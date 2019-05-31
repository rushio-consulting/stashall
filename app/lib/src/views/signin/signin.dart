import 'package:flutter/widgets.dart';
import 'package:stashall/src/widgets/auto_switch_platform_widget.dart';

class SigninView extends StatefulWidget {
  @override
  _SigninViewState createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  @override
  Widget build(BuildContext context) {
    return AutoSwitchPlatform(
      cupertino: Container(),
      material: Container(),
    );
  }
}
