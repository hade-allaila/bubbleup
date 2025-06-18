import 'package:chatting_app/core/theming/app_colors.dart';
import 'package:chatting_app/core/theming/app_text_styles.dart';
import 'package:chatting_app/core/widgets/app_text_form_feild.dart';
import 'package:chatting_app/features/auth/ui/widgets/Login_title.dart';
import 'package:chatting_app/features/auth/ui/widgets/google_button.dart';
import 'package:chatting_app/features/auth/ui/widgets/horizental_divider.dart';
import 'package:chatting_app/features/auth/ui/widgets/login_button.dart';
import 'package:chatting_app/features/auth/ui/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          LoginTitle(),
          SizedBox(height: 50.h),
          LoginForm(),
          SizedBox(height: 50.h),
          LoginButton(),
          SizedBox(height: 50.h),
          HorizentalDivider(),
          SizedBox(height: 20.h),
          Text(
            "Continue With Google ",
            style: AppTextStyles.font20DarkBlueBold,
          ),
          SizedBox(height: 20.h),
          GoogleButton(),
        ],
      ),
    );
  }
}
