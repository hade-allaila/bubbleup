import 'package:chatting_app/core/constants/app_assets.dart';
import 'package:chatting_app/features/onboarding/data/onboarding_page_model.dart';

List<OnboardingPageModel> onBoardingPages = [
  OnboardingPageModel(
    title: "Connect Instantly & Securely",
    description:
        "Experience fast, reliable messaging built for the modern world. Every chat, and file is protected with state-of-the-art end-to-end encryption, ensuring your privacy is always the priority.",
    imageUrl: AppAssets.onboardingImage1,
  ),
  OnboardingPageModel(
    title: "Chat, Reimagined.",
    description:
        "Unleash powerful tools in every conversation. Create group polls to make decisions, customize themes to match your style, and use smart replies to keep the conversation flowing.",
    imageUrl: AppAssets.onboardingImage2,
  ),
];
