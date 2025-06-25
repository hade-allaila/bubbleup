import 'package:chatting_app/core/constants/app_assets.dart';
import 'package:chatting_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LottieBuilder.asset(AppAssets.notfoundImageLottie),
          Text("Oops !!!", style: AppTextStyles.font58RedBold),
          Text(
            "Some thing unexpected has occured",
            style: AppTextStyles.font18BlackRegular,
          ),
        ],
      ),
    );
  }
}
