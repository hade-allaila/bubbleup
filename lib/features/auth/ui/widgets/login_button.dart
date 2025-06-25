import 'package:chatting_app/core/theming/app_colors.dart';
import 'package:chatting_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.symmetric(horizontal: 30.w),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Login", style: AppTextStyles.font16WhiteBold),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color>(AppColors.blue),
                minimumSize: WidgetStatePropertyAll<Size>(
                  Size(double.infinity, 50),
                ),
              ),
            ),
          );
  }
}