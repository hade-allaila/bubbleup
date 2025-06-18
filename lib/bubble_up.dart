import 'package:chatting_app/core/routing/app_router.dart';
import 'package:chatting_app/core/routing/app_routes.dart';
import 'package:chatting_app/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BubbleUp extends StatelessWidget {
  const BubbleUp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 809),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.onboarding,
        onGenerateRoute: AppRouter(context).generateRoute,
      ),
    );
  }
}
