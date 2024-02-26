import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_doctors/Features/on_boarding/widgets_onboarding/Doctor_image_andText.dart';
import 'package:the_doctors/Features/on_boarding/widgets_onboarding/Logowithname.dart';
import 'package:the_doctors/Features/on_boarding/widgets_onboarding/onboardingButton.dart';

class onBoarding extends StatelessWidget {
  const onBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30.h,
            bottom: 30.h,
          ),
          child: Column(
            children: [
              const LogoWithName(),
              const DoctorImage(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    const Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    onboardingButton()
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
