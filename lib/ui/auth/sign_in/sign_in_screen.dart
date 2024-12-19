import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignInScreen> {
  final _auth = FirebaseAuth.instance;

  Future<void> register() async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } catch (e) {
      print("SignIn failed: $e");
    }
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        body: Column(),
      ),
    );
  }
}
