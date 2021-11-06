import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginTextField extends StatefulWidget {
  const LoginTextField({Key? key}) : super(key: key);

  @override
  _LoginTextFieldState createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: TextField(
        decoration: InputDecoration(
          fillColor: CupertinoColors.white,
          focusColor: Colors.white
        ),
      ),
    );
  }
}
