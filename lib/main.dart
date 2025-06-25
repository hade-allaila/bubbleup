import 'package:chatting_app/bubble_up.dart';
import 'package:chatting_app/core/helpers/sharedprefernce_helper.dart';
import 'package:chatting_app/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedHelper = SharedPrefernceHelper(
    await SharedPreferences.getInstance(),
  );
  final app = await Firebase.initializeApp();
  FirebaseAuth.instanceFor(app: app);
  runApp(BubbleUp(store: sharedHelper));
}
