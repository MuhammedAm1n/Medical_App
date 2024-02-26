import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LogoWithName extends StatelessWidget {
  const LogoWithName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svg_pics/Group.svg'),
        SizedBox(
          width: 10.w,
        ),
        Text(
          'Doctor\'s',
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
      ],
    );
  }
}
