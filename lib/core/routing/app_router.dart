import 'package:chatting_app/core/routing/app_routes.dart';
import 'package:chatting_app/core/widgets/not_found_page.dart';
import 'package:chatting_app/features/auth/logic/app_auth_provider.dart';
import 'package:chatting_app/features/auth/ui/screens/sign_in_screen.dart';
import 'package:chatting_app/features/auth/ui/screens/sign_up_screen.dart';
import 'package:chatting_app/features/chat/ui/screens/chat_screen.dart';
import 'package:chatting_app/features/home/ui/screens/home_screen.dart';
import 'package:chatting_app/features/onboarding/logic/onboarding_provider.dart';
import 'package:chatting_app/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppRouter {
  BuildContext context;
  final firebaseAuth = FirebaseAuth.instance;
  AppRouter(this.context);
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onboarding:
        return MaterialPageRoute(
          builder:
              (_) => ChangeNotifierProvider<OnboardingProvider>(
                create: (_) => OnboardingProvider(),
                child: OnboardingScreen(),
              ),
        );
      case AppRoutes.signup:
        return MaterialPageRoute(
          builder:
              (_) => ChangeNotifierProvider(
                create:
                    (_) => AppAuthProvider(
                      context: context,
                      firebaseAuth: firebaseAuth,
                    ),
                child: SignUpScreen(),
              ),
        );
      case AppRoutes.signin:
        return checkauthintecation(HomeScreen(), SignInScreen());
      case AppRoutes.home:
        return checkauthintecation(HomeScreen(), SignInScreen());
      case AppRoutes.chat:
        return MaterialPageRoute(builder: (_) => ChatScreen());
      default:
        return MaterialPageRoute(builder: (_) => NotFoundPage());
    }
  }

  MaterialPageRoute checkauthintecation(
    Widget authWidget,
    Widget unAuthWidget,
  ) {
    if (FirebaseAuth.instance.currentUser != null) {
      return MaterialPageRoute(
        builder: (_) {
          return authWidget;
        },
      );
    } else {
      return MaterialPageRoute(
        builder: (_) {
          return unAuthWidget;
        },
      );
    }
  }
}
