import 'package:chatting_app/core/helpers/regex_helper.dart';
import 'package:chatting_app/core/widgets/app_text_form_feild.dart';
import 'package:chatting_app/features/auth/logic/app_auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isObscuredText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Form(
        key: context.read<AppAuthProvider>().formKey,
        child: Column(
          children: [
            AppTextFormFeild(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Email Can't be empty";
                }
                if (!RegexHelper.isEmailValid(value)) {
                  return "you have to Enter a valid Email Address !";
                }
                return null;
              },
              controller: context.read<AppAuthProvider>().email,
              label: Text("Email"),
              hintText: "Enter Your Email",
              prefixIcon: Icon(Icons.email_outlined),
            ),
            SizedBox(height: 20.h),
            AppTextFormFeild(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Password Can't be empty";
                }
                if (!RegexHelper.isPasswordValid(value)) {
                  return "Password is so weak";
                }
                return null;
              },
              controller: context.read<AppAuthProvider>().password,
              label: Text("Password"),
              hintText: "Enter Your password",
              prefixIcon: Icon(Icons.lock_outline),
              isObscured: isObscuredText,
              suffixIcon: IconButton(
                onPressed: () {
                  isObscuredText = !isObscuredText;
                  setState(() {});
                },
                icon:
                    isObscuredText
                        ? Icon(Icons.lock_outline)
                        : Icon(Icons.lock_open_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
