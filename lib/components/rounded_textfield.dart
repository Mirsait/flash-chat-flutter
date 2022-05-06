import 'package:flutter/material.dart';
import '../constants.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({
    Key key,
    this.hint,
    this.onChanged,
    this.isObscure = false,
  }) : super(key: key);
  final String hint;
  final Function(String) onChanged;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscure,
      onChanged: onChanged,
      decoration: kRoundedTextFieldDecoration.copyWith(hintText: hint),
    );
  }
}
