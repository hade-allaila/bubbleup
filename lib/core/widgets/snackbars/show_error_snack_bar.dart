import 'package:chatting_app/core/theming/app_colors.dart';
import 'package:chatting_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

showErrorSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Container(
        child: Text(message, style: AppTextStyles.font14WhiteBold),
      ),
      backgroundColor: AppColors.red,
    ),
  );
}
