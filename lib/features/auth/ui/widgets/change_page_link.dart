import 'package:chatting_app/core/extentions/navigation_extention.dart';
import 'package:chatting_app/core/theming/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ChangePageLink extends StatelessWidget {
  final String text1;
  final String text2;
  final String routeName;
  const ChangePageLink({
    super.key,
    required this.text1,
    required this.text2,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: text1, style: AppTextStyles.font12GreyRegular),
          TextSpan(
            text: text2,
            style: AppTextStyles.font12BlueBold,
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    context.pushReplacementNamed(routeName);
                  },
          ),
        ],
      ),
    );
  }
}
