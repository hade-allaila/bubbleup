import 'package:chatting_app/core/statics/statics.dart';
import 'package:chatting_app/core/theming/app_colors.dart';
import 'package:chatting_app/features/onboarding/ui/widgets/app_get_started_button.dart';
import 'package:chatting_app/features/onboarding/ui/widgets/current_page_dots_indicator.dart';
import 'package:chatting_app/features/onboarding/ui/widgets/onboarding_page_scroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            OnBoardingPageScroll(),
            CurrentPageDotsIndicator(
              dotsLength: onBoardingPages.length,
              activeDotColor: AppColors.blue,
              inactiveDotsColor: Colors.grey,
            ),
            SizedBox(height: 16.h),
            AppGetStartedButton(),
          ],
        ),
      ),
    );
  }
}
