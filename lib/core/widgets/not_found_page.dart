import 'package:chatting_app/core/constants/app_assets.dart';
import 'package:chatting_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LottieBuilder.asset(AppAssets.notfoundImageLottie),
          Text("OOOPS!!!", style: AppTextStyles.font20RedBold),
          Text("Some thisng went wrong ."),
        ],
      ),
    );
  }
}
