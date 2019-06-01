import 'package:flutter/widgets.dart';

class PasswordWidget extends StatelessWidget {
  final String url;
  final String description;

  PasswordWidget({@required this.url, this.description});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/passwords/id');
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(url),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(description),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
