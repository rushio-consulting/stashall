import 'dart:io';

import 'package:flutter/widgets.dart';

class AutoSwitchPlatform extends StatelessWidget {
  final Widget material;
  final Widget cupertino;

  AutoSwitchPlatform({@required this.material, @required this.cupertino});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS || Platform.isMacOS) {
      return cupertino;
    }
    return material;
  }
}
