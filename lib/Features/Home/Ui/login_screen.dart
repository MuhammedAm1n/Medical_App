import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:the_doctors/Core/Theming/Coloring.dart';
import 'package:the_doctors/Core/Widgets/TextButton.dart';
import 'package:the_doctors/Features/Home/Ui/widgets/Terms_conditions.dart';
import 'package:the_doctors/Features/Home/Ui/widgets/alreadyhaveaccount.dart';

import '../../../Core/Widgets/TextFormField.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  VoidCallback? voidCallback;
  bool IsObscure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome Back',
                style: TextStyle(
                    fontSize: 24,
                    color: ColorsManager.mainBlue,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 8.h,
              ),
              const Text(
                'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF757575),
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 36.h,
              ),
              Form(
                  child: Column(children: [
                const AppTextFormField(
                  hintText: 'Email',
                ),
                SizedBox(
                  height: 18.h,
                ),
                AppTextFormField(
                  hintText: 'Password',
                  IsObscureText: IsObscure,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        IsObscure = !IsObscure;
                      });
                    },
                    child: Icon(
                      IsObscure ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
              ])),
              SizedBox(
                height: 8.h,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      fontSize: 13,
                      color: ColorsManager.mainBlue,
                      fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              const GTextButton(text: 'Login'),
              SizedBox(
                height: 18.h,
              ),
              Column(
                children: [
                  const TermsandConditions(),
                  SizedBox(
                    height: 60.h,
                  ),
                  const AlreadyHaveAccount(),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
