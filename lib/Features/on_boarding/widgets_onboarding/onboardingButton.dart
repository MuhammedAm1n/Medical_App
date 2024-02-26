import 'package:flutter/material.dart';
import 'package:the_doctors/Core/Helpers/extenstions.dart';
import 'package:the_doctors/Core/Theming/Coloring.dart';

import '../../../Core/Routing/routes.dart';

class onboardingButton extends StatelessWidget {
  const onboardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
          backgroundColor:
              const MaterialStatePropertyAll(ColorsManager.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize:
              const MaterialStatePropertyAll(Size(double.infinity, 52)),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))),
      child: const Text(
        'Get Started',
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
      ),
    );
  }
}
