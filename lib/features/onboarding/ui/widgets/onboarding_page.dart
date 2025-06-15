import 'package:chatting_app/core/theming/app_text_styles.dart';
import 'package:chatting_app/features/onboarding/data/onboarding_page_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingPage extends StatelessWidget {
  final OnboardingPageModel pageInfo;
  const OnBoardingPage({
    super.key,
    required this.pageInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.w),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 20.h),
            child: Text(
              pageInfo.title,
              style: AppTextStyles.font20DarkBlueBold,
            ),
          ),
          SizedBox(height: 32.h),
          Text(
            pageInfo.description,
            style: AppTextStyles.font12GreyRegular.copyWith(height: 1.7),
          ),
          SizedBox(height: 32.h),
          Image.asset(
            pageInfo.imageUrl,
            height: 250.h,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}