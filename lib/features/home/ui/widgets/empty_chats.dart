import 'package:chatting_app/core/constants/app_assets.dart';
import 'package:chatting_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EmptyChats extends StatelessWidget {
  const EmptyChats({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LottieBuilder.asset(
            AppAssets.empty_chats_home_screen,
            width: 300,
            repeat: false,
          ),
          Text('Chats Still Empty', style: AppTextStyles.font20DarkBlueBold),
          Text(
            "try making your first chat now!",
            style: AppTextStyles.font12GreyRegular,
          ),
        ],
      ),
    );
  }
}
