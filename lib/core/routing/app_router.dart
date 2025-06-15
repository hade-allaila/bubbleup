import 'package:chatting_app/core/routing/router_constants.dart';
import 'package:chatting_app/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter { 
  Route? generateRoute(RouteSettings settings) { 
    switch(settings.name) { 
      case RouterConstants.onboarding: 
        return MaterialPageRoute(builder: (_) => OnboardingScreen());

    }
  }
}