import 'package:chatting_app/core/theming/app_colors.dart';
import 'package:chatting_app/core/theming/app_text_styles.dart';
import 'package:chatting_app/features/onboarding/logic/onboarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class AppGetStartedButton extends StatelessWidget {
  const AppGetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(AppColors.blue),
        shape: WidgetStatePropertyAll<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
        ),
        padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
        ),
      ),
      onPressed: () {
        context.read<OnboardingProvider>().changePageOnGetStartedButtonClick(context);
      },
      child: Text(
        context.watch<OnboardingProvider>().currentPage == 0
            ? "Next"
            : "Start Now",
        style: AppTextStyles.font14WhiteBold,
      ),
    );
  }
}
