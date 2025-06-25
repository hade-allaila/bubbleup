import 'package:chatting_app/core/extentions/navigation_extention.dart';
import 'package:chatting_app/core/routing/app_routes.dart';
import 'package:chatting_app/core/widgets/dialogs/error_dialog.dart';
import 'package:chatting_app/features/auth/logic/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AppAuthProvider extends ChangeNotifier {
  final FirebaseAuth firebaseAuth;
  final BuildContext context;
  AuthState authState = AuthState.loading;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();

  AppAuthProvider({required this.context, required this.firebaseAuth});
  Future<void> addUserWithEmailAndPassword() async {
    authState = AuthState.loading;
    notifyListeners();
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      authState = AuthState.authenticated;
      notifyListeners();
      return;
    } on FirebaseAuthException catch (e) {
      print(e.code);
      rethrow;
    }
  }

  bool validateForm() {
    if (formKey.currentState!.validate()) {
      return true;
    } else {
      return false;
    }
  }
}
