import 'package:chatting_app/core/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

showLoadingDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) {
      return Center(
        child: Container(
          width: 150.w,
          height: 150.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(75.r),
          ),
          child: Lottie.asset(
            AppAssets.loadingDialogLottie,
            width: 100,
            height: 100,
          ),
        ),
      );
    },
  );
}
