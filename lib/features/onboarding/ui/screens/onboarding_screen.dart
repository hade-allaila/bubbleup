
import 'package:chatting_app/features/onboarding/ui/widgets/onboarding_page_scroll.dart';
import 'package:flutter/material.dart';


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
          ],
        ),
      ),
    );
  }
}
