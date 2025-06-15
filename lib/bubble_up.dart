import 'package:chatting_app/onboarding_screen.dart';
import 'package:flutter/material.dart';

class BubbleUp extends StatelessWidget {
  const BubbleUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingScreen(),
    );
  }
}