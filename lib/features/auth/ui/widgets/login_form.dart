import 'package:chatting_app/core/widgets/app_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Form(
        child: Column(
          children: [
            AppTextFormFeild(
              label: Text("Email"),
              hintText: "Enter Your Email",
              prefixIcon: Icon(Icons.email_outlined),
            ),
            SizedBox(height: 20.h),
            AppTextFormFeild(
              label: Text("Password"),
              hintText: "Enter Your password",
              prefixIcon: Icon(Icons.lock_outline),
              isObscured: true,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove_red_eye_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
