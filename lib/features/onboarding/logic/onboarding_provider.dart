import 'package:chatting_app/core/routing/app_routes.dart';
import 'package:chatting_app/core/statics/statics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class OnboardingProvider extends ChangeNotifier {
  int _currentPage = 0;
  int get currentPage => _currentPage;

  final PageController _controller = PageController();
  PageController get controller => _controller;
  void chagePage(int index) {
    _currentPage = index;
    notifyListeners();
  }

  void changePageOnGetStartedButtonClick(BuildContext context) {
    _currentPage++;
    notifyListeners();
    if (currentPage > onBoardingPages.length - 1) {
      _currentPage = onBoardingPages.length - 1;
      try {
        Navigator.pushReplacementNamed(context, AppRoutes.login);
      } catch (e) {
        if(kDebugMode) { 
        print(e);
        }
      }
      return;
    } else {
      _controller.animateToPage(
        currentPage,
        duration: Duration(seconds: 1),
        curve: Curves.easeIn,
      );
    }
  }
}
