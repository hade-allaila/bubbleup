import 'package:chatting_app/core/statics/statics.dart';
import 'package:chatting_app/core/theming/app_text_styles.dart';
import 'package:chatting_app/features/onboarding/data/onboarding_page_model.dart';
import 'package:chatting_app/features/onboarding/ui/widgets/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingPageScroll extends StatelessWidget {
  const OnBoardingPageScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: PageView.builder(
        itemCount: onBoardingPages.length,
        itemBuilder: (context, index) {
          return OnBoardingPage(pageInfo: onBoardingPages[index]);
        },
      ),
    );
  }
}
