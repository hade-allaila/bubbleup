import 'package:chatting_app/core/extentions/navigation_extention.dart';
import 'package:chatting_app/core/routing/app_routes.dart';
import 'package:chatting_app/core/theming/app_colors.dart';
import 'package:chatting_app/core/theming/app_text_styles.dart';
import 'package:chatting_app/features/home/ui/widgets/empty_chats.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text("Hello hade", style: AppTextStyles.font20DarkBlueBold),
        actions: [
          IconButton(
            onPressed: () {
              context.pushNamed("/djf");
            },
            icon: Icon(Icons.notifications),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      body: EmptyChats(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushNamed(AppRoutes.chat);
        },
        child: Icon(Icons.chat, size: 24, color: Colors.white),
        backgroundColor: AppColors.blue,
        shape: CircleBorder(),
      ),
    );
  }
}
