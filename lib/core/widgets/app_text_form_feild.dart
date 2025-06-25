import 'package:chatting_app/core/theming/app_colors.dart';
import 'package:chatting_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormFeild extends StatelessWidget {
  final Widget label;
  final String hintText;
  final Icon prefixIcon;
  final bool isObscured;
  final Widget? suffixIcon;
  const AppTextFormFeild({
    super.key,
    required this.label,
    required this.hintText,
    required this.prefixIcon,
    this.isObscured = false,
    this.suffixIcon = null,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscured,
      decoration: InputDecoration(
        label: label,
        hintText: hintText,
        suffixIcon: suffixIcon,
        hintStyle: AppTextStyles.font12GreyRegular,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColors.blue),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: Colors.redAccent),
        ),
        prefixIcon: prefixIcon,
      ),
    );
  }
}
