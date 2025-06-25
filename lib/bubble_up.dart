import 'package:chatting_app/core/constants/app_strings.dart';
import 'package:chatting_app/core/helpers/sharedprefernce_helper.dart';
import 'package:chatting_app/core/routing/app_router.dart';
import 'package:chatting_app/core/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BubbleUp extends StatelessWidget {
  final SharedPrefernceHelper store;
  const BubbleUp({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 809),
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData(fontFamily: "Rubik"),
        debugShowCheckedModeBanner: false,
        initialRoute:
            store.getString(AppStrings.isOnBoardingVisited) != null
                ? AppRoutes.signin
                : AppRoutes.onboarding,
        onGenerateRoute: AppRouter(context).generateRoute,
      ),
    );
  }
}
