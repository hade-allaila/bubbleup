import 'package:chatting_app/core/extentions/navigation_extention.dart';
import 'package:chatting_app/core/theming/app_colors.dart';
import 'package:chatting_app/core/theming/app_text_styles.dart';
import 'package:chatting_app/core/widgets/dialogs/error_dialog.dart';
import 'package:chatting_app/features/auth/logic/app_auth_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const AuthButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.w),
      child: ElevatedButton(
        onPressed: onPressed,

        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll<Color>(AppColors.blue),
          minimumSize: WidgetStatePropertyAll<Size>(Size(double.infinity, 50)),
        ),
        child: Text(text, style: AppTextStyles.font16WhiteBold),
      ),
    );
  }
}
