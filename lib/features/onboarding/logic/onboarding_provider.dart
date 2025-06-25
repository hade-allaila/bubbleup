import 'package:chatting_app/core/constants/app_strings.dart';
import 'package:chatting_app/core/extentions/navigation_extention.dart';
import 'package:chatting_app/core/helpers/sharedprefernce_helper.dart';
import 'package:chatting_app/core/routing/app_routes.dart';
import 'package:chatting_app/core/statics/statics.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingProvider extends ChangeNotifier {
  int _currentPage = 0;
  int get currentPage => _currentPage;

  final PageController _controller = PageController();
  PageController get controller => _controller;
  void chagePage(int index) {
    _currentPage = index;
    notifyListeners();
  }

  void changePageOnGetStartedButtonClick(BuildContext context) async {
    _currentPage++;
    notifyListeners();
    if (currentPage > onBoardingPages.length - 1) {
      _currentPage = onBoardingPages.length - 1;
      SharedPrefernceHelper shared = SharedPrefernceHelper(
        await SharedPreferences.getInstance(),
      );
      shared.setData(AppStrings.isOnBoardingVisited, "visited");
      context.pushReplacementNamed(AppRoutes.signin);
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
