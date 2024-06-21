import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sociout1/auth/auth_screen.dart';
import 'package:sociout1/screen/home.dart';
import 'package:sociout1/widgets/navigation.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Navigations_Screen();
          } else {
            return AuthPage();
          }
        },
      ),
    );
  }
}