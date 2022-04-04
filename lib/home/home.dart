import 'package:flutter/material.dart';

import 'package:atlas/services/auth.dart';
import 'package:atlas/profile/profile.dart';
import 'package:atlas/login/login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text('Loading');
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('error'),
          );
        } else if (snapshot.hasData) {
          return const ProfileScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}
