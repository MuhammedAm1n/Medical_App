import 'package:flutter/material.dart';
import 'package:the_doctors/Core/Theming/Coloring.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      softWrap: true,
      textAlign: TextAlign.justify,
      text: const TextSpan(children: [
        TextSpan(
            text: 'Already have an account?',
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.black)),
        TextSpan(
            text: ' Sign Up',
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: ColorsManager.mainBlue)),
      ]),
    );
  }
}
