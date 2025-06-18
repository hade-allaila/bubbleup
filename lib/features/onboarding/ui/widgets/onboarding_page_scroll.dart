import 'package:chatting_app/core/statics/statics.dart';
import 'package:chatting_app/features/onboarding/logic/onboarding_provider.dart';
import 'package:chatting_app/features/onboarding/ui/widgets/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class OnBoardingPageScroll extends StatelessWidget {
  OnBoardingPageScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: PageView.builder(
        controller: context.read<OnboardingProvider>().controller,
        onPageChanged: (index) {
          context.read<OnboardingProvider>().chagePage(index);
        },
        itemCount: onBoardingPages.length,
        itemBuilder: (context, index) {
          return OnBoardingPage(pageInfo: onBoardingPages[index]);
        },
      ),
    );
  }
}
