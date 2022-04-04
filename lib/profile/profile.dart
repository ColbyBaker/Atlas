import 'package:flutter/material.dart';

import 'package:atlas/services/auth.dart';

import 'package:atlas/shared/navbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: OutlinedButton(
          child: Text("Sign Out"),
          onPressed: () async {
            await AuthService().signOut();
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/', (route) => false);
          },
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
