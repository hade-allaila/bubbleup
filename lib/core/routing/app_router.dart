import 'package:chatting_app/core/routing/app_routes.dart';
import 'package:chatting_app/features/auth/ui/screens/login_screen.dart';
import 'package:chatting_app/features/onboarding/logic/onboarding_provider.dart';
import 'package:chatting_app/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppRouter {
  BuildContext context;
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
        case AppRoutes.login:
          return MaterialPageRoute(builder: (_) => LoginScreen());
      default: 
      return null;
    }
  }
}
