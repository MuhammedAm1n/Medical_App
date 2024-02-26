import 'package:flutter/material.dart';
import 'package:the_doctors/Core/Theming/Coloring.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In Screeenzzzzzzzzzzzzzzzzzzzzzzzzzz'),
        backgroundColor: ColorsManager.mainBlue, //
      ),
    );
  }
}
