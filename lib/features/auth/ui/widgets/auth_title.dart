import 'package:chatting_app/core/theming/app_colors.dart';
import 'package:chatting_app/core/theming/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthTitle extends StatelessWidget {
  final String title;
  final String description;
  const AuthTitle({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220.h,
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100),
          bottomRight: Radius.circular(100),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: AppTextStyles.font24WhiteBold),
          SizedBox(height: 10.h),
          Text(description, style: AppTextStyles.font14WhiteRegular),
        ],
      ),
    );
  }
}
