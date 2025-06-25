import 'package:chatting_app/core/constants/app_assets.dart';
import 'package:chatting_app/core/extentions/navigation_extention.dart';
import 'package:chatting_app/core/theming/app_colors.dart';
import 'package:chatting_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

showErrorDialog(String title, String desc, BuildContext context) {
  showDialog(
    context: context,
    builder: (_) {
      return Center(
        child: Container(
          height: 300.h,
          width: 300.w,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                AppAssets.errorDilogLottie,
                height: 100.h,
                width: 100.w,
                repeat: false,
              ),
              SizedBox(height: 10.h),
              Text(title, style: AppTextStyles.font20RedBold),
              SizedBox(height: 10.h),
              Text(
                desc,
                style: AppTextStyles.font14GreyRegular,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.h),
              ElevatedButton(
                onPressed: () {
                  context.pop();
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(AppColors.red),
                  minimumSize: WidgetStatePropertyAll<Size>(
                    Size(double.infinity, 50.h),
                  ),
                ),
                child: Text("OK", style: AppTextStyles.font16WhiteBold),
              ),
            ],
          ),
        ),
      );
    },
  );
}
