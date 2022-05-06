import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import '../components/rounded_button.dart';
import '../components/chat_logo.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome';
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

const colorizeColors = [
  Colors.black,
  Colors.white,
  Colors.black,
];

const colorizeTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.bounceOut);
    _controller.forward();
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
            Row(
              children: <Widget>[
                ChatLogo(height: _animation.value * 60.0),
                AnimatedTextKit(
                  isRepeatingAnimation: true,
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'Flash Chat',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                      speed: const Duration(milliseconds: 250),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              text: 'Sign In',
              color: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundedButton(
              text: 'Sign Up',
              color: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
