import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_doctors/Core/Theming/Coloring.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {super.key,
      required this.hintText,
      this.hintStyle,
      this.inputTextStyle,
      this.IsObscureText,
      this.suffixIcon,
      this.FoucusBorder,
      this.enabledBorder,
      this.edgeInsets});
  final EdgeInsets? edgeInsets;
  final String hintText;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final bool? IsObscureText;
  final Widget? suffixIcon;
  final InputBorder? FoucusBorder;
  final InputBorder? enabledBorder;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        // padding of TextFormField
        contentPadding: edgeInsets ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        isDense: true,
        // hint text of TextFormFIeld
        hintText: hintText,

        // hint style of hintText
        hintStyle:
            hintStyle ?? TextStyle(fontSize: 14, color: Colors.grey.shade500),
        // IIcon in TextFormFIeld
        suffixIcon: suffixIcon,

        //Border's of TextFormField
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(16)),
        focusedBorder: FoucusBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: ColorsManager.mainBlue),
              borderRadius: BorderRadius.circular(16),
            ),
      ),
      obscureText: IsObscureText ?? false,
      style: TextStyle(color: const Color.fromARGB(255, 4, 53, 94)),
    );
  }
}
