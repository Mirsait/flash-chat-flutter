import 'package:flutter/material.dart';

import '../components/chat_logo.dart';
import '../components/rounded_button.dart';
import '../components/rounded_textfield.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'signin';
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const ChatLogo(height: 200.0),
            const SizedBox(height: 48.0),
            RoundedTextField(
              hint: 'Enter your email',
              onChanged: (value) {},
            ),
            const SizedBox(height: 8.0),
            RoundedTextField(
              hint: 'Enter your password',
              isObscure: true,
              onChanged: (value) {},
            ),
            const SizedBox(height: 24.0),
            RoundedButton(
              text: 'Sign In',
              color: Colors.lightBlueAccent,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
