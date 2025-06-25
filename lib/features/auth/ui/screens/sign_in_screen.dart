import 'package:chatting_app/core/extentions/navigation_extention.dart';
import 'package:chatting_app/core/routing/app_routes.dart';
import 'package:chatting_app/core/theming/app_colors.dart';
import 'package:chatting_app/core/theming/app_text_styles.dart';
import 'package:chatting_app/core/widgets/dialogs/error_dialog.dart';
import 'package:chatting_app/core/widgets/dialogs/loading_dialog.dart';
import 'package:chatting_app/core/widgets/snackbars/show_error_snack_bar.dart';
import 'package:chatting_app/features/auth/logic/app_auth_provider.dart';
import 'package:chatting_app/features/auth/logic/auth_state.dart';
import 'package:chatting_app/features/auth/ui/widgets/auth_title.dart';
import 'package:chatting_app/features/auth/ui/widgets/change_page_link.dart';
import 'package:chatting_app/features/auth/ui/widgets/google_button.dart';
import 'package:chatting_app/features/auth/ui/widgets/horizental_divider.dart';
import 'package:chatting_app/features/auth/ui/widgets/auth_button.dart';
import 'package:chatting_app/features/auth/ui/widgets/login_form.dart';
import 'package:chatting_app/features/auth/ui/widgets/signup_form.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AuthTitle(
              title: "Sign in",
              description: "Create Account to started chatting now",
            ),
            SizedBox(height: 50.h),
            SignupForm(),
            SizedBox(height: 50.h),
            AuthButton(
              text: "sign in",
              onPressed: () async {
                showLoadingDialog(context);
                if (context.read<AppAuthProvider>().validateForm()) {
                  try {
                    await context
                        .read<AppAuthProvider>()
                        .addUserWithEmailAndPassword();
                    context.pop();
                    context.pushNamed(AppRoutes.home);
                  } on FirebaseException catch (e) {
                    context.pop();
                    handleSignupError(e, context);
                  }
                } else {
                  context.pop();
                  showErrorSnackBar(
                    context,
                    'Enter you email and password correctly and try again',
                  );
                }
              },
            ),
            SizedBox(height: 50.h),
            HorizentalDivider(),
            SizedBox(height: 20.h),
            Text(
              "Continue With Google ",
              style: AppTextStyles.font20DarkBlueBold,
            ),
            SizedBox(height: 20.h),
            GoogleButton(),
            SizedBox(height: 20.h),
            ChangePageLink(
              text1: "Don't have an account? ",
              text2: "signup",
              routeName: AppRoutes.signup,
            ),
          ],
        ),
      ),
    );
  }

  handleSignupError(FirebaseException e, context) {
    if (e.code == "email-already-in-use") {
      showErrorDialog(
        "Email aleady exists",
        "the email you enterd is aleady taken",
        context,
      );
    }
    if (e.code == 'invalid-email') {
      showErrorDialog(
        "Email is Invalid",
        "the email you enterd is invalid try to correct it",
        context,
      );
    }
    if (e.code == 'weak-password') {
      showErrorDialog(
        "Password is Weak",
        "the password you enterd is weak ",
        context,
      );
    }

    if (e.code == 'too-many-requests') {
      showErrorDialog(
        "Too many Requests",
        "you have many tries to login please wait a minute and try again",
        context,
      );
    }
    if (e.code == 'network-request-failed') {
      showErrorDialog(
        "Network Error",
        "There is a problem with your network please check your connection and then try again",
        context,
      );
    }
    return;
  }
}
