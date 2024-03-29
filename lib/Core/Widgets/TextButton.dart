import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_doctors/Core/Theming/Coloring.dart';

class GTextButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const GTextButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          backgroundColor:
              const MaterialStatePropertyAll(ColorsManager.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStatePropertyAll(Size(double.infinity, 50.h)),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
      ),
    );
  }
}
