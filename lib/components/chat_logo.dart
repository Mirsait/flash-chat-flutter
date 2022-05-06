import 'package:flutter/material.dart';

class ChatLogo extends StatelessWidget {
  const ChatLogo({Key key, this.height}) : super(key: key);
  final double height;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'logo',
      child: SizedBox(
        child: Image.asset('images/logo.png'),
        height: height,
      ),
    );
  }
}
