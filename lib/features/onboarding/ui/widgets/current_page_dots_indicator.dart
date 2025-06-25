import 'package:chatting_app/features/onboarding/logic/onboarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CurrentPageDotsIndicator extends StatelessWidget {
  final int dotsLength;
  final Color activeDotColor;
  final Color inactiveDotsColor;
  const CurrentPageDotsIndicator({
    super.key,
    required this.dotsLength,
    required this.activeDotColor,
    required this.inactiveDotsColor,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(dotsLength, (index) {
        return AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeOut,
          width:
              index == context.watch<OnboardingProvider>().currentPage
                  ? 20.w
                  : 10.w,
          height: 10.h,
          margin: EdgeInsets.only(left: 10.w),
          decoration: BoxDecoration(
            color:
                index == context.watch<OnboardingProvider>().currentPage
                    ? activeDotColor
                    : inactiveDotsColor,
            borderRadius: BorderRadius.circular(15.r),
          ),
        );
      }),
    );
  }
}
